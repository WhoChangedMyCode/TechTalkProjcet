package org.soft.base.mapper.dynamic;

import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

/**
 * @author lane
 */
public class SplitUtils {
	/**
	 * 根据传入的参数生成查询表格行数的SQL语句
	 *
	 * @param map 查询条件参数，包含tableName（表名）、humanId（人ID）、typeId（类型ID）、articleId（文章ID）
	 * @return 生成的SQL语句字符串
	 */
	public String getTableRows(Map<String, Object> map) {
		String sql = new SQL() {
			{
				SELECT("COUNT(*)");
				FROM(map.get("tableName").toString());
				if (map.get("humanId") != null) {
					WHERE("humanId = #{humanId}");
				} else if (map.get("typeId") != null) {
					WHERE("typeId = #{typeId}");
				} else if (map.get("articleId") != null) {
					WHERE("articleId = #{articleId}");
				}
			}
		}.toString();
		return sql;
	}
}
