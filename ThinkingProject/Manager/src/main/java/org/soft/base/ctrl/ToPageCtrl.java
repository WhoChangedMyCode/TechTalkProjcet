package org.soft.base.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lane
 */
@Controller
@RequestMapping()
public class ToPageCtrl {
	/**
	 * 用于跳转到页面
	 *
	 * @param p1 第一个参数，要跳转的页面的名称
	 * @param p2 第二个参数，要跳转的页面的名称
	 * @return 返回p1和p2的拼接字符串
	 */
	@RequestMapping("to/{p1}/{p2}")
	public String toPage(@PathVariable("p1") String p1,
						 @PathVariable("p2") String p2) {
		// 处理前往/{p1}/{p2}的请求，并返回p1和p2的拼接字符串
		return p1 + "/" + p2;
	}

	/**
	 * 用于跳转到页面
	 *
	 * @param p1 第一个参数，要跳转的页面的名称
	 * @param p2 第二个参数，要跳转的页面的名称
	 * @param p3 第三个参数，要跳转的页面的名称
	 * @return 返回p1和p2的拼接字符串
	 */
	@RequestMapping("to/{p1}/{p2}/{p3}")
	public String toPageMain(@PathVariable("p1") String p1,
							 @PathVariable("p2") String p2,
							 @PathVariable("p3") String p3) {
		return p1 + "/" + p2 + "/" + p3;
	}

	/**
	 * 根据路径变量重定向到指定页面
	 *
	 * @param p1 路径变量p1
	 * @param p2 路径变量p2
	 * @param p3 路径变量p3
	 * @param p4 路径变量p4
	 * @return 重定向的页面地址
	 */
	@RequestMapping("to/{p1}/{p2}/{p3}/{p4}")
	public String toPageMain01(@PathVariable("p1") String p1,
							   @PathVariable("p2") String p2,
							   @PathVariable("p3") String p3,
							   @PathVariable("p4") String p4) {
		return p1 + "/" + p2 + "/" + p3 + "/" + p4;
	}

	/**
	 * 用于跳转到权限分配页面
	 *
	 * @param adminId - 管理员ID
	 * @param model   - 模型对象
	 * @return 响应页面
	 */
	@RequestMapping("to/role/authority/{adminId}")
	public String toPageAuthority(@PathVariable("adminId") int adminId, Model model) {
		model.addAttribute("adminId", adminId);
		return "main/role/authority";
	}

	/**
	 * 登录页面的请求处理方法
	 *
	 * @return 登录页面的视图名称
	 */
	@RequestMapping("to/toLogin")
	public String toLogin() {
		return "main/admin/share/adminLogin";
	}

	/**
	 * 注册请求的处理方法
	 * 跳转到登录页面
	 *
	 * @return 登录页面的视图名称
	 */
	@RequestMapping("/")
	public String to_Login() {
		return "main/admin/share/adminLogin";
	}

}
