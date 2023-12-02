package org.soft.base.ctrl;

import org.soft.base.dao.AdminDao;
import org.soft.base.dao.MessageDao;
import org.soft.base.dao.SplitPageDao;
import org.soft.base.enums.BaseData;
import org.soft.base.model.Admin;
import org.soft.base.model.FileVO;
import org.soft.base.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author lane
 */
@RestController
public class MessageCtrl {

	@Autowired
	@Qualifier("messageDao")
	private MessageDao messageDao;

	@Autowired
	@Qualifier("splitPageDao")
	private SplitPageDao splitPageDao;

	@Autowired
	@Qualifier("adminDao")
	private AdminDao adminDao;

	/**
	 * 圖片路徑前綴
	 */
	private String tag = "/news/";

	/**
	 * 圖片上傳
	 *
	 * @param file 圖片
	 * @return 圖片路徑
	 */
	@RequestMapping("/message/uploadImage")
	public FileVO imageUpload(@RequestParam("myFile") MultipartFile file) {
		FileVO fileVO = null;
		String fileName = UUID.randomUUID().toString() + file.getOriginalFilename();
		String path = BaseData.ANNOUNCEMENT_PATH.getValue().toString() + fileName;
		File f = new File(path);
		try {
			file.transferTo(f);
			String[] datas = {tag + fileName};
			fileVO = new FileVO(0, datas);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		return fileVO;
	}

	/**
	 * 发布公告
	 *
	 * @param message 发布的公告
	 * @param session 当前会话
	 * @return 是否发布成功
	 */
	@PostMapping("/message/issue")
	public boolean messageIssue(Message message, HttpSession session) {
		Object object = session.getAttribute("admin");
		Admin admin = null;
		if (object == null) {
			String adminName = getUserName();
			admin = adminDao.adminByName(adminName);
			session.setAttribute("admin", admin);
		} else {
			admin = (Admin) object;
		}
		int adminId = admin.getAdminId();
		message.setAdminId(adminId);
		return messageDao.messageIssue(message);
	}

	/**
	 * 分頁查尋的對應頁碼的公告
	 *
	 * @param currentPage 当前页码
	 * @return 分頁公告数据
	 */
	@PostMapping("/message/messageList/{currentPage}")
	public Map<String, Object> messageListSplit(@PathVariable("currentPage") int currentPage) {
		Map<String, Object> map = new HashMap<>();
		// 获取公告总行数
		int rows = splitPageDao.allRows("message");
		// 计算总页数
		int allPage = splitPageDao.allPages(rows, BaseData.ANNOUNCEMENT_SIZE.getValue());
		// 计算开始行数
		int begin = splitPageDao.beginRow(currentPage, BaseData.ANNOUNCEMENT_SIZE.getValue());

		Map<String, Object> param = new HashMap<>();
		param.put("begin", begin);
		param.put("size", BaseData.ANNOUNCEMENT_SIZE.getValue());
		// 根据时间参数获取公告列表
		List<Message> messages = messageDao.messageListByTime(param);
		// 总页数
		map.put("allPage", allPage);
		// 指定页的数据
		map.put("messages", messages);
		return map;
	}

	/**
	 * 查看指定新闻
	 *
	 * @param messageId 新闻ID
	 * @return 指定新闻
	 */
	@PostMapping("/message/byId/{messageId}")
	public Message messageById(@PathVariable("messageId") int messageId) {
		Message messageResult = messageDao.messageById(messageId);
		return messageResult;
	}

	/**
	 * 删除公告
	 *
	 * @param messageId 要删除的公告的消息ID
	 * @return 删除结果，成功返回true，失败返回false
	 */
	@PostMapping("/messageOp/messageDel/{messageId}")
	public boolean messageDeleteById(@PathVariable("messageId") int messageId) {
		boolean deleteResult = messageDao.messageDelById(messageId);
		return deleteResult;
	}

	/**
	 * 查询最新的一条公告
	 *
	 * @return 最新的一条公告
	 */
	@PostMapping("/message/new")
	public Message getMessageNewCtrl() {
		Message messageResult = messageDao.getMessageNew();
		return messageResult;
	}

	/**
	 * 获取用户名称
	 *
	 * @return 用户名称
	 */
	private String getUserName() {
		// 这个Java函数获取当前线程上下文中的Authentication对象，该对象表示当前用户的身份验证信息。
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}

}
