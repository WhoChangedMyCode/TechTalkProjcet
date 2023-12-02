package org.soft.base.impl;

import org.soft.base.dao.TypeDAO;
import org.soft.base.mapper.TypeDAOMapper;
import org.soft.base.model.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author lane
 */
@Controller
public class TypeDAOImpl implements TypeDAO {
	@Autowired
	private TypeDAOMapper typeDaoMapper;

	/**
	 * 发布类型
	 *
	 * @param type 类型信息
	 * @return 发布是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean typeIssue(Type type) {
		boolean b = typeDaoMapper.typeIssue(type);
		return b;
	}

	/**
	 * 查询所有类型
	 *
	 * @return 返回一个类型列表
	 */
	@Override
	public List<Type> typeList() {
		List<Type> typeListResult = typeDaoMapper.typeList();
		return typeListResult;
	}

	/**
	 * 根据类型ID删除类型
	 *
	 * @param typeId 类型ID
	 * @return 删除是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean typeDelById(int typeId) {
		boolean deleteResult = typeDaoMapper.typeDelById(typeId);
		return deleteResult;
	}

	/**
	 * 根据类型ID查询类型信息
	 *
	 * @param typeId 类型ID
	 * @return 查询到的类型信息
	 */
	@Override
	public Type typeById(int typeId) {
		Type typeResult = typeDaoMapper.typeById(typeId);
		return typeResult;
	}
}
