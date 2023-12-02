package org.soft.base.dao;

import org.soft.base.model.Type;

import java.util.List;

/**
 * @author lane
 */
public interface TypeDAO {
	/**
	 * 创建文章类型
	 *
	 * @param type 文章类型
	 * @return 是否成功创建文章类型
	 */
	boolean typeIssue(Type type);

	/**
	 * 查询所有类型
	 *
	 * @return 返回一个Type类型的列表
	 */
	List<Type> typeList();

	/**
	 * 删除类型
	 *
	 * @param typeId 类型ID
	 * @return 删除是否成功
	 */
	boolean typeDelById(int typeId);

	/**
	 * 根据类型ID获取类型
	 *
	 * @param typeId 类型ID
	 * @return 类型对象
	 */
	Type typeById(int typeId);
}
