package org.soft.base.server;

import org.soft.base.model.Human;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author lane
 */
@Controller
public class ToPage {

	/**
	 * 跳转到登录页面
	 *
	 * @param human        当前用户
	 * @param modelAndView 模型和视图
	 * @return 模型和视图
	 */
	@RequestMapping("/")
	public ModelAndView toLoginPage(@SessionAttribute("human") Human human, ModelAndView modelAndView) {
		if (human != null) {
			modelAndView = new ArticleServer().articleList(1, modelAndView);
		} else {
			modelAndView.setViewName("view/login");
		}
		return modelAndView;
	}


	@RequestMapping("/to/{path}")
	public String toViewPage(@PathVariable("path") String path) {
		return "view/" + path;
	}

	@RequestMapping("/to/article/{path}")
	public String toArticlePage(@PathVariable("path") String path) {
		return "article/" + path;
	}

	@RequestMapping("/to/{path}/{page}")
	public String toViewPageTo(@PathVariable("path") String path,
							   @PathVariable("page") String page) {
		return path + "/" + page;
	}
}
