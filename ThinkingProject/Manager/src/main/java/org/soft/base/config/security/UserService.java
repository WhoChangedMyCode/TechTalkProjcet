package org.soft.base.config.security;

import org.soft.base.dao.AdminDao;
import org.soft.base.model.Admin;
import org.soft.base.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class UserService implements UserDetailsService {

	@Autowired
	@Qualifier("adminDao")
	private AdminDao adminDao;

	/**
	 * 重写loadUserByUsername方法，根据用户名查询用户信息
	 *
	 * @param username 用户名
	 * @return UserDetails 用户细节对象
	 * @throws UsernameNotFoundException 如果用户不存在则抛出该异常
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// 通过用户名查询用户
		Admin admin = adminDao.adminByName(username);
		// 判断用户是否存在，若不存在则抛出异常
		if (admin == null) {
			throw new UsernameNotFoundException("找不到指定用户");
		}
		// 获取用户所有的权限
		List<Role> reRoles = admin.getRoles();

		List<GrantedAuthority> authorities = new ArrayList<>();
		// 遍历权限
		for (Role role : reRoles) {
			String roleName = role.getRoleName();
			// 把权限名加载到SimpleGrantedAuthority工具类中
			SimpleGrantedAuthority authority = new SimpleGrantedAuthority(roleName);
			// 加载权限到Security的权限列表中
			authorities.add(authority);
		}
		// 后期程序员可以在该对象获取构造方法中的参数值
		String userPassword = admin.getAdminPassword();
		// 返回用户细节对象
		return new User(username, userPassword, authorities);
	}

}
