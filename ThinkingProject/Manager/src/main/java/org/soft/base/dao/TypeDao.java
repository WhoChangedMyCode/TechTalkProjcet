package org.soft.base.dao;

import org.soft.base.model.Type;

import java.util.List;

/**
 * 文章类型DAO
 *
 * @author lane
 */
public interface TypeDao {

	/**
	 * 创建文章类型
	 *
	 * @param type 文章类型
	 * @return 是否成功创建文章类型
	 */
	boolean typeIssue(Type type);

	/**
	 * 文章列表信息
	 *
	 * @return 文章类型的列表
	 */
	List<Type> typeList();

	/**
	 * 删除指定类型
	 *
	 * @param typeId 要删除的类型ID
	 * @return 删除成功返回true，否则返回false
	 */
	boolean typeDelById(int typeId);

	/**
	 * 删除指定的文章类型
	 *
	 * @param type 要删除的文章类型
	 * @return 删除是否成功的布尔值
	 */
	boolean typeUpdate(Type type);

}
