package org.soft.base.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.soft.base.model.Type;

import java.util.List;

/**
 * @author lane
 */
@Mapper
public interface TypeDAOMapper {
	/**
	 * 创建文章类型
	 *
	 * @param type 文章类型信息
	 * @return 是否成功创建文章类型，返回true表示成功，返回false表示失败
	 */
	@Insert("INSERT INTO type(typeName) VALUE (#{typeName})")
	boolean typeIssue(Type type);

	/**
	 * 查询所有类型
	 *
	 * @return 返回所有类型的列表
	 */
	@Select("SELECT * FROM type")
	List<Type> typeList();

	/**
	 * 删除类型
	 *
	 * @param typeId 类型ID
	 * @return 删除成功返回true，否则返回false
	 */
	@Delete("DELETE FROM type WHERE typeId = #{typeId}")
	boolean typeDelById(int typeId);

	/**
	 * 根据类型ID获取类型信息
	 *
	 * @param typeId 类型ID
	 * @return 类型信息
	 */
	@Select("SELECT * FROM type WHERE typeId = #{typeId}")
	Type typeById(int typeId);

}
