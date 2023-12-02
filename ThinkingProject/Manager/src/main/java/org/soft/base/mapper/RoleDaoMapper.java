package org.soft.base.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.soft.base.model.Role;

import java.util.List;

/**
 * @author lane
 */
@Mapper
public interface RoleDaoMapper {

	/**
	 * 查询用户已经授权信息
	 *
	 * @param adminId - 用户ID
	 * @return 用户已授权的角色列表
	 */
	@Select("SELECT r.* FROM roles r INNER JOIN roleRelation re ON r.roleId = re.roleId "
			+ "INNER JOIN admin a ON a.adminId = re.adminId AND a.adminId = #{adminId}")
	List<Role> roleByAdminId(int adminId);

	/**
	 * 查询所有的权限
	 *
	 * @return 所有的权限列表
	 */
	@Select("SELECT * FROM roles")
	List<Role> getRoleList();

}
