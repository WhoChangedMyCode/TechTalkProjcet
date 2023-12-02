package org.soft.base.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.soft.base.model.RoleRelation;

/**
 * @author lane
 */
@Mapper
public interface RoleRelationDaoMapper {

	/**
	 * 给用户授权
	 *
	 * @param relation 给定的用户授权关系对象
	 * @return 返回是否成功创建用户授权关系，true表示成功，false表示失败
	 */
	@Insert("INSERT INTO roleRelation (adminId,roleId) VALUE (#{adminId} , #{roleId})")
	boolean roleRelationCreate(RoleRelation relation);

	/**
	 * 删除权限
	 *
	 * @param relation 删除权限的 RoleRelation 对象
	 * @return 删除是否成功的布尔值
	 */
	@Delete("DELETE FROM roleRelation WHERE adminId = #{adminId} AND roleId = #{roleId}")
	boolean relationDelById(RoleRelation relation);

}
