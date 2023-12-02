package org.soft.base.impl;

import org.soft.base.dao.RoleDao;
import org.soft.base.mapper.RoleDaoMapper;
import org.soft.base.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * @author lane
 */
@Controller("roleDao")
public class RoleDaoImpl implements RoleDao {
	@Autowired
	private RoleDaoMapper roleDaoMapper;

	/**
	 * 根据管理员ID查询对应的角色列表
	 *
	 * @param adminId 管理员ID
	 * @return 对应的角色列表
	 */
	@Override
	public List<Role> roleByAdminId(int adminId) {
		List<Role> roleListResult = roleDaoMapper.roleByAdminId(adminId);
		return roleListResult;
	}

	/**
	 * 获取所有角色列表
	 *
	 * @return 角色列表
	 */
	@Override
	public List<Role> getRoleList() {
		List<Role> roleListResult = roleDaoMapper.getRoleList();
		return roleListResult;
	}
}
