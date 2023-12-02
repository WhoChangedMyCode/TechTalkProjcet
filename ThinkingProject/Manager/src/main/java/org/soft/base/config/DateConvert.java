package org.soft.base.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 当前端页面有参数（String）需要传递到后端，接收方类型为Date时会自动调用该类型转换器
 *
 * @author lane
 */
@Configuration
public class DateConvert implements Converter<String, Date> {
	/**
	 * 实现Converter接口的convert方法，将String类型的日期转换为Date类型的日期
	 *
	 * @param source 要转换的日期字符串
	 * @return 转换后的日期
	 */
	@Override
	public Date convert(String source) {
		// 创建一个SimpleDateFormat对象，指定日期格式为"yyyy-MM-dd"
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// 创建一个Date对象
		Date date = null;
		try {
			// 将字符串源日期解析为Date对象
			date = simpleDateFormat.parse(source);
		} catch (ParseException e) {
			// 如果解析出错，则抛出运行时异常
			throw new RuntimeException(e);
		}
		// 返回解析后的Date对象
		return date;
	}

}
