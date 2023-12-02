package org.soft.base.dao;

/**
 * 分页工具类
 *
 * @author lane
 */
public interface SplitPageDao {

	/**
	 * 求总行数
	 *
	 * @param tableName 表名
	 * @return 总行数
	 */
	int allRows(String tableName);

	/**
	 * 求总页数
	 *
	 * @param rows 总行数
	 * @param size 每页显示数量
	 * @return 总页数
	 */
	int allPages(int rows, int size);

	/**
	 * 指定页数在数据中数据查询的起始位置
	 *
	 * @param currentPage 当前页数
	 * @param size        每页的数据条数
	 * @return 起始位置
	 */
	int beginRow(int currentPage, int size);

}
