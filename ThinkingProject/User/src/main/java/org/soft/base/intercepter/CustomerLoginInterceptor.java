package org.soft.base.intercepter;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * @author lane
 */
@Controller
public class CustomerLoginInterceptor implements HandlerInterceptor {
	/**
	 * 在控制器方法执行之前的过滤器，用于白名单验证和用户登录验证
	 *
	 * @param request  请求对象
	 * @param response 响应对象
	 * @param handler  控制器方法处理对象
	 * @return 如果用户已登录或者请求URL在白名单中，返回true，否则返回false
	 * @throws Exception 可能抛出的异常
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// 定义一个Set来存储白名单的路径
		Set<String> whitelist = new HashSet<>();
		whitelist.add("/");
		whitelist.add("/login");
		whitelist.add("/register");
		whitelist.add("/to/view/login");
		whitelist.add("/to/register");
		whitelist.add("/to/view/register");
		whitelist.add(".css");
		whitelist.add(".js");
		whitelist.add(".png");
		whitelist.add(".jpg");
		whitelist.add(".jpeg");
		whitelist.add(".gif");
		whitelist.add(".webp");

		// 获取当前请求的URL
		String currentRequestUrl = request.getRequestURL().toString();
		for (String whitelistElement : whitelist) {
			if (currentRequestUrl.endsWith(whitelistElement)) {
				return true;
			}
		}

		// 获取session中的human属性
		Object object = request.getSession().getAttribute("human");
		// 如果object为空，表示用户没有登录
		if (object != null) {
			return true;
		} else {
			response.sendRedirect("/to/view/login");
			// 區別筆記
			// request.getRequestDispatcher("/to/view/login").forward(request, response);
			return false;
		}
	}

}
