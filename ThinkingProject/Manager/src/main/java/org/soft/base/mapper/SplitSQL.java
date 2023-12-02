package org.soft.base.mapper;

import org.apache.ibatis.jdbc.SQL;

/**
 * @author lane
 */
public class SplitSQL {

	public String getAllRows(String tableName) {
		String sql = new SQL() {
			{
				SELECT("count(*)");
				FROM(tableName);
			}
		}.toString();
		return sql;
	}

	// public static void main(String[] args) {
	// 	SplitSQL splitSQL = new SplitSQL();
	// 	String sql = splitSQL.getAllRows("message");
	// 	System.out.println(sql);
	// }
}
