package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.soft.base.model.Type;

import java.util.List;

/**
 * @author lane
 */
@Mapper
public interface TypeDaoMapper {

	/**
	 * 创建文章类型
	 *
	 * @param type 要创建的文章类型
	 * @return 如果文章类型创建成功则返回true，否则返回false
	 */
	@Insert("INSERT INTO type (typeName) VALUE (#{typeName})")
	boolean typeIssue(Type type);

	/**
	 * 文章列表信息
	 *
	 * @return 文章列表
	 */
	@Select("SELECT * FROM type")
	List<Type> typeList();

	/**
	 * 删除指定类型
	 *
	 * @param typeId 要删除的类型的ID
	 * @return 删除成功返回true，否则返回false
	 */
	@Delete("DELETE FROM type WHERE typeId = #{typeId}")
	boolean typeDelById(int typeId);

	/**
	 * 删除指定的文章类型
	 *
	 * @param type 要删除的文章类型对象
	 * @return 删除成功返回true，否则返回false
	 */
	@Update("UPDATE type SET typeName = #{typeName} WHERE typeId = #{typeId}")
	boolean typeUpdate(Type type);
}
