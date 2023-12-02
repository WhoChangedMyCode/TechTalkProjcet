package org.soft.base.ctrl;

import org.soft.base.config.security.PasswordEncrypt;
import org.soft.base.dao.AdminDao;
import org.soft.base.dao.SplitPageDao;
import org.soft.base.enums.BaseData;
import org.soft.base.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author lane
 */
@RestController
@RequestMapping("/admin")

public class AdminCtrl {

	@Autowired
	@Qualifier("adminDao")
	private AdminDao adminDao;

	@Autowired
	@Qualifier("splitPageDao")
	private SplitPageDao splitPageDao;

	@Autowired
	private PasswordEncrypt passwordEncrypt;

	/**
	 * 添加管理員
	 *
	 * @param admin - 管理員对象
	 * @return 添加是否成功
	 */
	@PostMapping("/issue")
	public boolean adminIssue(Admin admin) {
		// 加密管理员密码
		String adminPassword = passwordEncrypt.encrypt(admin.getAdminPassword());
		admin.setAdminPassword(adminPassword);
		return adminDao.adminCreate(admin);
	}

	/**
	 * 管理员展示列表信息
	 *
	 * @param currentPage 当前页数
	 * @return 列表信息
	 */
	@PostMapping("/adminList/{currentPage}")
	public Map<String, Object> adminShowList(@PathVariable("currentPage") int currentPage) {
		// 當前分頁的起始行位置
		int begin = splitPageDao.beginRow(currentPage, BaseData.ADMINISTRATOR_SIZE.getValue());
		// 構建adminDao.adminLIst()方法所需要的參數map
		Map<String, Object> map = new HashMap<>();
		map.put("size", BaseData.ADMINISTRATOR_SIZE.getValue());
		map.put("begin", begin);
		// 獲取對應分頁拍中的管理員信息
		List<Admin> admins = adminDao.adminList(map);
		// 总行数
		int rows = splitPageDao.allRows("admin");
		// 总页数
		int allPage = splitPageDao.allPages(rows, BaseData.ADMINISTRATOR_SIZE.getValue());
		// 用於存儲返回信息
		Map<String, Object> result = new HashMap<>();
		// 每页显示的内容
		result.put("admins", admins);
		// 总页数
		result.put("allPage", allPage);
		return result;
	}

	/**
	 * 更新管理员密码
	 *
	 * @param adminPassword 管理员新設置的密码
	 * @param admin         管理員的Session
	 * @return 更新是否成功的结果
	 */
	@PostMapping("/update/{adminPassword}")
	public boolean adminUpdate(@PathVariable("adminPassword") String adminPassword, @SessionAttribute("admin") Admin admin, HttpSession session) {
		// 加密新密碼
		adminPassword = passwordEncrypt.encrypt(adminPassword);
		// 將新密碼更新到Session當中
		admin.setAdminPassword(adminPassword);
		session.setAttribute("admin", admin);
		// 更新數據庫中的密碼
		return adminDao.adminUpdate(admin);
	}

	/**
	 * 更新管理员头像
	 *
	 * @param adminHead 管理员头像文件
	 * @param admin     管理员对象
	 * @param session   HttpSession对象
	 * @return true表示更新成功，false表示更新失败
	 */
	@PostMapping("/head")
	public boolean adminHeadUpdate(MultipartFile adminHead, @SessionAttribute("admin") Admin admin, HttpSession session) {
		boolean updateResult = true;
		String fileName = System.currentTimeMillis() + UUID.randomUUID().toString() + adminHead.getOriginalFilename();
		String path = BaseData.AVATAR_PATH.getValue();
		File file = new File(path + fileName);
		if (!file.exists()) {
			try {
				// 如果Session中沒有admin,就去數據庫中查找，並將查詢到的admin存入Session中
				if (admin == null) {
					admin = adminDao.adminByName(getUsername());
					session.setAttribute("admin", admin);
				}
				// 獲取原來的頭像，在上傳新頭像前先刪除原來的頭像
				String oldHead = admin.getAdminHead();
				if (oldHead != null) {
					Path filePath = Paths.get(path, oldHead);
					try {
						// 使用Java 7新特性Files.deleteIfExists()方法刪除文件
						Files.deleteIfExists(filePath);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				// 上傳新頭像
				adminHead.transferTo(file);
				admin.setAdminHead(fileName);
				updateResult = adminDao.adminHeadIssue(admin);
			} catch (IOException e) {
				throw new RuntimeException(e);
			}
		} else {
			updateResult = false;
		}
		return updateResult;
	}

	/**
	 * 退出
	 *
	 * @param session HttpSession对象，用于操作当前session信息
	 */
	@PostMapping("/logout")
	public void logOut(HttpSession session) {
		// 移除session中的"admin"属性
		session.removeAttribute("admin");
	}

	/**
	 * 获取当前登录的管理员信息
	 *
	 * @param session HttpSession对象，用于获取当前会话信息
	 * @return 当前登录的管理员信息
	 */
	@PostMapping("/getAdminSession")
	public Admin adminShow(HttpSession session) {
		boolean b = false;
		Admin admin = null;
		if (session.getAttribute("admin") == null) {
			admin = adminDao.adminByName(getUsername());
			session.setAttribute("admin", admin);
		} else {
			admin = (Admin) session.getAttribute("admin");
		}
		return admin;
	}

	/**
	 * 匹配密码和密码码
	 *
	 * @param password     密码
	 * @param passwordCode 密码码
	 * @return 如果匹配成功返回true，否则返回false
	 */
	@RequestMapping("matching/{pa}/{pac}")
	public boolean matchingCtrl(@PathVariable("pa") String password,
								@PathVariable("pac") String passwordCode) {
		return passwordEncrypt.matching(password, passwordCode);
	}

	/**
	 * 因为使用Security实现用户登录，Security会把用户信息信息到Security中，
	 * 我们如果需要使用到一些参数可以从Security中获取
	 *
	 * @return 当前登录的用户名
	 */
	private String getUsername() {
		// 从SecurityContext中获得Authentication对象代表当前用户的信息
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println("username = " + username);
		return username;
	}
}