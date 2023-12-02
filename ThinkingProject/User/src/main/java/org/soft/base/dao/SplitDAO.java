package org.soft.base.dao;

/**
 * @author lane
 */
public interface SplitDAO {

	/**
	 * 求总页数
	 *
	 * @param rows 数据总行数
	 * @param size 每页大小
	 * @return 总页数
	 */
	int allPage(int rows, int size);

	/**
	 * 根据当前页和每页大小计算出开始行号
	 *
	 * @param currentPage 当前页数
	 * @param size        每页大小
	 * @return 开始行号
	 */
	int rowBegin(int currentPage, int size);
}
