package org.soft.base.impl;

import org.soft.base.dao.TypeDao;
import org.soft.base.mapper.TypeDaoMapper;
import org.soft.base.model.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author lane
 */
@Controller("typeDao")
public class TypeDaoImpl implements TypeDao {
	@Autowired
	private TypeDaoMapper typeDaoMapper;

	/**
	 * 重写父类方法，处理类型问题
	 *
	 * @param type 类型对象
	 * @return 处理结果
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean typeIssue(Type type) {
		boolean insertResult = typeDaoMapper.typeIssue(type);
		return insertResult;
	}

	/**
	 * 重写父类方法，用于获取类型列表
	 *
	 * @return 类型列表
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
	 * @return 删除是否成功的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean typeDelById(int typeId) {
		boolean deleteResult = typeDaoMapper.typeDelById(typeId);
		return deleteResult;
	}

	/**
	 * 更新类型信息
	 *
	 * @param type 类型对象
	 * @return 更新结果
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean typeUpdate(Type type) {
		boolean updateResult = typeDaoMapper.typeUpdate(type);
		return updateResult;
	}

}
