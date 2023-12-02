package org.soft.base.config.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * @author lane
 */
@Component
public class PasswordEncrypt {

	/**
	 * 密码解析器
	 *
	 * @param password 需要解析的密码
	 * @return 解析后的密码
	 */
	public String encrypt(String password) {
		String p = new BCryptPasswordEncoder().encode(password);
		return p;
	}

	/**
	 * 判断给定的密码和密码编码是否匹配
	 *
	 * @param password     待匹配的密码
	 * @param passwordCode 密码编码
	 * @return 如果密码和密码编码匹配，则返回true；否则返回false
	 */
	public boolean matching(String password, String passwordCode) {
		boolean b = new BCryptPasswordEncoder().matches(password, passwordCode);
		return b;
	}

}
