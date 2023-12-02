package org.soft.base.impl;

import org.soft.base.dao.SplitDAO;
import org.springframework.stereotype.Component;

/**
 * @author lane
 */
@Component
public class SplitDAOImpl implements SplitDAO {
	/**
	 * 计算总页数
	 *
	 * @param rows 总记录数
	 * @param size 每页显示条目数
	 * @return 总页数
	 */
	@Override
	public int allPage(int rows, int size) {
		int value = rows / size;
		if (rows % size != 0) {
			value++;
		}
		return value;
	}

	/**
	 * 获取当前页的第一行的索引
	 *
	 * @param currentPage 当前页码
	 * @param size        每页的大小
	 * @return 第一行的索引
	 */
	@Override
	public int rowBegin(int currentPage, int size) {
		int result = (currentPage - 1) * size;
		return result;
	}

}
