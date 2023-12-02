package org.soft.base.configuration;

import org.soft.base.intercepter.CustomerLoginInterceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author lane
 */
@Configuration
public class RegisterConfigurer implements WebMvcConfigurer {

	@Autowired
	private CustomerLoginInterceptor customerLoginInterceptor;

	/**
	 * 注册拦截器
	 *
	 * @param registry 拦截器注册
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(customerLoginInterceptor).addPathPatterns("/**");
	}
}
