package org.soft.base.configuration;

import org.soft.base.constant.SplitEnum;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author lane
 */
@Configuration
public class ImagePathConfiguration implements WebMvcConfigurer {
	/**
	 * 图片路径配置
	 *
	 * @param registry 资源注册器
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 注册资源处理器，指定资源路径和资源位置
		registry.addResourceHandler(SplitEnum.TAG.getValue() + "**").addResourceLocations("file:" + SplitEnum.ARTICLE_IMAGE_UPLOAD_PATH.getValue());
	}
}
