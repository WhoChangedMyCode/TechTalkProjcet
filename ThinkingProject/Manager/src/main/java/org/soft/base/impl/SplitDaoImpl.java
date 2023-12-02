package org.soft.base.impl;

import org.soft.base.dao.SplitPageDao;
import org.soft.base.mapper.SplitUtilsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @author lane
 */
@Controller("splitPageDao")
public class SplitDaoImpl implements SplitPageDao {
	@Autowired
	private SplitUtilsMapper splitUtilsMapper = null;

	/**
	 * 求总行数
	 *
	 * @param tableName 表名
	 * @return 总行数
	 */
	@Override
	public int allRows(String tableName) {
		int result = splitUtilsMapper.allRows(tableName);
		return result;
	}

	/**
	 * 求总页数
	 *
	 * @param rows 总行数
	 * @param size 每页显示数量
	 * @return 总页数
	 */
	@Override
	public int allPages(int rows, int size) {
		int value = 0;
		if (rows % size > 0) {
			value = (rows / size) + 1;
		} else {
			value = rows / size;
		}
		return value;
	}

	/**
	 * 指定页数在数据中数据查询的起始位置
	 *
	 * @param currentPage 当前页数
	 * @param size        每页的数据条数
	 * @return 起始位置
	 */
	@Override
	public int beginRow(int currentPage, int size) {
		int result = (currentPage - 1) * size;
		return result;
	}
}
