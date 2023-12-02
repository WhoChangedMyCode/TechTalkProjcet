package org.soft.base.config;

import org.soft.base.enums.BaseData;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 图片路径的映射
 *
 * @author lane
 */
@Configuration
public class MvcConfiguration implements WebMvcConfigurer {

	//    @Autowired
//    @Qualifier("logIntercept")
//    private LoginIntercept loginIntercept;
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/head/**").addResourceLocations("file:" + BaseData.AVATAR_PATH.getValue());
		registry.addResourceHandler("/news/**").addResourceLocations("file:" + BaseData.ANNOUNCEMENT_PATH.getValue());
	}

	/**
	 * 拦截器
	 */
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//       registry.addInterceptor(loginIntercept).addPathPatterns("/**");
//    }
}
