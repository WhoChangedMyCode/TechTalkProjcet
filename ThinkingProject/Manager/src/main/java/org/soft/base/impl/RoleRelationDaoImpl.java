package org.soft.base.impl;

import org.soft.base.dao.RoleRelationDao;
import org.soft.base.mapper.RoleRelationDaoMapper;
import org.soft.base.model.RoleRelation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author lane
 */
@Controller("roleRelationDao")
public class RoleRelationDaoImpl implements RoleRelationDao {

	@Autowired
	private RoleRelationDaoMapper roleRelationDaoMapper;

	/**
	 * 创建角色关联关系
	 *
	 * @param relation 角色关联关系对象
	 * @return 返回是否成功创建角色关联关系
	 */
	@Override
	public boolean roleRelationCreate(RoleRelation relation) {
		boolean insertResult = roleRelationDaoMapper.relationDelById(relation);
		return insertResult;
	}

	/**
	 * 删除角色关联关系
	 *
	 * @param relation 角色关联关系对象
	 * @return 返回是否成功删除角色关联关系
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean relationDelById(RoleRelation relation) {
		boolean deleteResult = roleRelationDaoMapper.relationDelById(relation);
		return deleteResult;
	}
}
