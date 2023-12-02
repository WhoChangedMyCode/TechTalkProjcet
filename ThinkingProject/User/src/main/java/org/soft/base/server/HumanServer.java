package org.soft.base.server;

import org.soft.base.dao.HumanDAO;
import org.soft.base.model.Human;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;

/**
 * @author lane
 */
@Controller
@SessionAttributes({"human"})
public class HumanServer {
	private String result;

	@Autowired
	private HumanDAO humanDao;

	/**
	 * 用户注册
	 *
	 * @param human 要注册的用户对象
	 * @return 注册成功后跳转到登录页面，注册失败后跳转到注册页面
	 */
	@PostMapping("/register")
	public String humanRegisterServer(Human human) {
		boolean registerResult = humanDao.humanRegister(human);
		if (registerResult) {
			result = "view/login";
		} else {
			result = "view/register";
		}
		return result;
	}

	/**
	 * 用户登录
	 *
	 * @param human Human对象
	 * @param model 模型对象
	 * @return 登录结果页面的路径
	 */
	@PostMapping("/login")
	public String humanLoginServer(Human human, Model model) {
		human = humanDao.humanLogin(human);
		if (human != null) {
			model.addAttribute("human", human);
			result = "redirect:/article/articleList/1";
		} else {
			result = "view/login";
		}
		return result;
	}

	/**
	 * 用户修改密碼
	 *
	 * @param human            要修改密碼的用户对象
	 * @param oldHumanPassword 老密碼
	 * @return 跳轉的頁面
	 */
	@PostMapping("/updateHumanPassword")
	public String updateHumanPassword(Human human, @RequestParam("oldHumanPassword") String oldHumanPassword) {
		boolean updateResult = humanDao.updateHumanPassword(human, oldHumanPassword);
		// 如果修改成功，返回登录页面，否则返回修改页面
		if (updateResult) {
			result = "view/login";
		} else {
			result = "view/update";
		}
		return result;
	}

	/**
	 * 更新人类信息
	 *
	 * @param human 人类对象，包含需要更新的信息
	 * @param model 模型对象，用于传递数据
	 * @return 更新结果，如果成功返回true，否则返回false
	 */
	@PostMapping("/updateInfo")
	@ResponseBody
	public boolean updateInfo(Human human, Model model) {
		boolean updateResult = humanDao.updateInfo(human);
		if (updateResult) {
			int humanId = human.getHumanId();
			Human humanUpdated = humanDao.getHumanById(humanId);
			model.addAttribute("human", humanUpdated);
		}
		return updateResult;
	}

	/**
	 * 用户退出
	 *
	 * @param session       HttpSession对象，用于获取当前用户会话信息
	 * @param sessionStatus SessionStatus对象，用于标记会话状态
	 * @return 返回view/login页面
	 */
	@RequestMapping("/getOut")
	public String getOut(HttpSession session, SessionStatus sessionStatus) {
		// 移除会话中名为"human"的属性
		session.removeAttribute("human");
		// 设置会话状态为完成
		sessionStatus.setComplete();
		return "view/login";
	}
}
