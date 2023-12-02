package org.soft.base.dao;

import org.soft.base.model.RoleRelation;

/**
 * 权限关系DAO
 *
 * @author lane
 */
public interface RoleRelationDao {

	/**
	 * 创建用户权限
	 *
	 * @param relation 用户权限信息
	 * @return 是否成功创建用户权限
	 */
	boolean roleRelationCreate(RoleRelation relation);

	/**
	 * 删除权限
	 *
	 * @param relation 删除角色权限关系对象
	 * @return 删除是否成功
	 */
	boolean relationDelById(RoleRelation relation);


}
