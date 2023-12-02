package org.soft.base.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;

/**
 * @author lane
 */
@Mapper
public interface SplitUtilsMapper {

	/**
	 * 求总行数
	 *
	 * @param tableName 表名
	 * @return 总行数
	 */
	@SelectProvider(type = SplitSQL.class, method = "getAllRows")
	int allRows(String tableName);
}
