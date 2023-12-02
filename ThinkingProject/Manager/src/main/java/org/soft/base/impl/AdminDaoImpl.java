package org.soft.base.impl;

import org.soft.base.dao.AdminDao;
import org.soft.base.mapper.AdminDaoMapper;
import org.soft.base.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Controller("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private AdminDaoMapper adminDaoMapper;

	/**
	 * 管理员创建
	 *
	 * @param admin 要创建的管理员对象
	 * @return 插入是否成功的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean adminCreate(Admin admin) {
		boolean insertResult = adminDaoMapper.adminCreate(admin);
		return insertResult;
	}

	/**
	 * 员工信息列表
	 *
	 * @param map 参数map
	 * @return 员工信息列表
	 */
	@Override
	public List<Admin> adminList(Map<String, Object> map) {
		List<Admin> adminListResult = adminDaoMapper.adminList(map);
		return adminListResult;
	}

	/**
	 * 员工信息修改
	 *
	 * @param admin 需要更新的员工信息
	 * @return 更新是否成功的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean adminUpdate(Admin admin) {
		boolean updateResult = adminDaoMapper.adminUpdate(admin);
		return updateResult;
	}

	/**
	 * 创建管理员头像
	 *
	 * @param admin 管理员对象
	 * @return 是否成功创建管理员头像
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean adminHeadIssue(Admin admin) {
		boolean insertResult = adminDaoMapper.adminHeadIssue(admin);
		return insertResult;
	}

	/**
	 * 通过用户名查找用户信息
	 *
	 * @param adminName 用户名
	 * @return 用户信息
	 */
	@Override
	public Admin adminByName(String adminName) {
		Admin adminResult = adminDaoMapper.adminByName(adminName);
		return adminResult;
	}

	/**
	 * 通过管理员id查找用户信息
	 *
	 * @param adminId - 管理员id
	 * @return 查找到的用户信息
	 */
	@Override
	public Admin adminById(int adminId) {
		Admin adminResult = adminDaoMapper.adminById(adminId);
		return adminResult;
	}

}
