package org.soft.base.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;
import org.soft.base.mapper.dynamic.SplitUtils;

import java.util.Map;

/**
 * @author lane
 */
@Mapper
public interface SplitDAOMapper {
	/**
	 * 根据指定的参数获取文章行数
	 *
	 * @param map 参数映射表
	 * @return 文章行数
	 */
	@SelectProvider(type = SplitUtils.class, method = "getTableRows")
	int getArticleRows(Map<String, Object> map);
}
