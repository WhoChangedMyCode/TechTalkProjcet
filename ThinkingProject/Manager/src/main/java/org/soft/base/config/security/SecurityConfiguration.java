package org.soft.base.config.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * @author lane
 */
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	/**
	 * 用户服务
	 */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 配置HTTP安全
	 *
	 * @param http HTTP安全对象
	 * @throws Exception 异常
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// 允许访问的路径
		http.authorizeRequests()
				.antMatchers("/login", "/", "/to/toLogin", "/js/**", "/css/**", "/head/**", "/news/**",
						"/to/navigation/**", "/to/main/message/message", "/admin/logout").permitAll()
				// 需要ADMIN或ADMINTYPE或ADMINMESSAGE角色的访问权限
				.antMatchers("/message/**", "/to/main/admin/share/**", "/admin/getAdminSession").hasAnyRole("ADMIN", "ADMINTYPE", "ADMINMESSAGE")
				// 需要ADMIN角色的访问权限
				.antMatchers("/to/main/admin/**", "/admin/**", "/to/main/role/**").hasRole("ADMIN")
				// 需要ADMINTYPE角色的访问权限
				.antMatchers("/to/main/type/**", "/type/**").hasRole("ADMINTYPE")
				// 需要ADMINMESSAGE角色的访问权限
				.antMatchers("/to/main/message/**", "/messageOp/**").hasRole("ADMINMESSAGE")
				// 需要登录认证的请求
				.anyRequest().authenticated().and()
				// 启用表单登录
				.formLogin().loginPage("/to/toLogin").loginProcessingUrl("/login")
				// 登录成功后重定向的页面
				.usernameParameter("adminName").passwordParameter("adminPassword").successForwardUrl("/to/main/message/message").and()
				// 启用注销
				.logout().permitAll().and()
				// 异常处理页面
				.exceptionHandling().accessDeniedPage("/to/main/error").and()
				// 不允许跨域请求
				.cors().disable();

		// 忽略CSRF(跨站请求伪造 Cross-Site Request Forgery)验证的路径
		http.csrf().ignoringAntMatchers("/admin/**", "/message/**", "/type/**", "/relation/**", "/messageOp/**");
	}

	/**
	 * 配置认证管理器
	 *
	 * @param auth 认证管理器构建器
	 * @throws Exception 异常
	 */
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// 创建认证提供者
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		// 设置隐藏用户异常
		provider.setHideUserNotFoundExceptions(false);
		// 设置用户详情服务
		provider.setUserDetailsService(userService);
		// 创建密码编码器
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		// 设置密码编码器
		provider.setPasswordEncoder(passwordEncoder);
		// 设置认证管理器提供者
		auth.authenticationProvider(provider);
	}

}
