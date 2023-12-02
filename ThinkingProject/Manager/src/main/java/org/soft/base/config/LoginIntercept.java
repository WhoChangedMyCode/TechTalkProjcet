package org.soft.base.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lane
 */ //@Component("logIntercept")
public class LoginIntercept implements HandlerInterceptor {

	/**
	 * 不需要拦截的地址
	 */
	private static List<String> urls = new ArrayList<>();

	static {
		urls.add(".css");
		urls.add(".js");
		urls.add("/adminLogin.html");
		urls.add("/login");
		urls.add("/adminLogin");
	}

	/**
	 * 预处理方法，在请求处理之前的处理操作
	 *
	 * @param request  请求对象
	 * @param response 响应对象
	 * @param handler  处理程序对象
	 * @return 如果处理成功返回true，否则返回false
	 * @throws Exception 异常处理
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 每次访问的路径
		String uri = request.getRequestURI();

		for (String add : urls) {
			if (uri.endsWith(add)) {
				return true;
			}
		}
		// 获取session
		Object object = request.getSession().getAttribute("admin");
		if (object != null) {
			return true;
		} else {
			request.getRequestDispatcher("/to/main/admin/adminLogin").forward(request, response);
			return false;
		}
	}

}
