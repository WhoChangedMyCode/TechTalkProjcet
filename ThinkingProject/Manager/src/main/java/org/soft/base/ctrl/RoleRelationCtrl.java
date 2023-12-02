package org.soft.base.ctrl;

import org.soft.base.dao.RoleDao;
import org.soft.base.dao.RoleRelationDao;
import org.soft.base.model.Role;
import org.soft.base.model.RoleRelation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@RestController
@RequestMapping("relation")
public class RoleRelationCtrl {

	@Autowired
	@Qualifier("roleRelationDao")
	private RoleRelationDao roleRelationDao;
	@Autowired
	@Qualifier("roleDao")
	private RoleDao roleDao;

	/**
	 * 获取指定管理员拥有的权限
	 *
	 * @param adminId 管理员ID
	 * @return 管理员拥有的权限
	 */
	@PostMapping("rolesAll/{adminId}")
	public Map<String, Object> getAdminRoleRelationCtrl(@PathVariable("adminId") int adminId) {
		// 所有的权限
		List<Role> allRoles = roleDao.getRoleList();
		// 指定ID拥有的权限
		List<Role> adminRoles = roleDao.roleByAdminId(adminId);

		if (adminRoles != null) {
			for (Role adminRole : adminRoles) {
				int adminRoleRoleId = adminRole.getRoleId();
				for (Role allRole : allRoles) {
					int allRoleId = allRole.getRoleId();
					if (adminRoleRoleId == allRoleId) {
						// 在所有授权列表中删除该用户已经授权的名称，剩下的就是未授权的名称
						allRoles.remove(allRole);
						break;
					}
				}
			}
		}
		Map<String, Object> map = new HashMap<>();
		map.put("alreadyAuthorized", adminRoles);
		map.put("notAuthorized", allRoles);
		return map;
	}

	/**
	 * 根据角色关系信息创建角色关系
	 *
	 * @param relation 角色关系信息
	 * @return 成功创建返回true，否则返回false
	 */
	@PostMapping("/issue")
	public boolean roleRelationIssue(RoleRelation relation) {
		boolean insertResult = roleRelationDao.roleRelationCreate(relation);
		return insertResult;
	}

	/**
	 * 根据角色关系信息删除角色关系
	 *
	 * @param relation 角色关系信息
	 * @return 成功删除返回true，否则返回false
	 */
	@PostMapping("/delete")
	public boolean roleRelationDelete(RoleRelation relation) {
		boolean deleteResult = roleRelationDao.relationDelById(relation);
		return deleteResult;
	}

}
