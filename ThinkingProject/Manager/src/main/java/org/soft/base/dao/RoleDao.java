package org.soft.base.dao;

import org.soft.base.model.Role;

import java.util.List;

/**
 * 权限操作DAO
 *
 * @author lane
 */
public interface RoleDao {

	/**
	 * 查询用户已经授权信息
	 *
	 * @param adminId 用户ID
	 * @return 用户已授权的角色列表
	 */
	List<Role> roleByAdminId(int adminId);

	/**
	 * 查询所有的权限
	 *
	 * @return 返回所有的权限列表
	 */
	List<Role> getRoleList();

}
