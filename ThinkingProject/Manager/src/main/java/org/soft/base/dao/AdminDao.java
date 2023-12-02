package org.soft.base.dao;

import org.soft.base.model.Admin;

import java.util.List;
import java.util.Map;

/**
 * 管理员信息管理DAO
 *
 * @author lane
 */
public interface AdminDao {
	/**
	 * 管理员创建
	 *
	 * @param admin 要创建的管理员对象
	 * @return 创建是否成功的布尔值
	 */
	boolean adminCreate(Admin admin);

	/**
	 * 获取员工信息列表
	 *
	 * @param map 过滤条件参数映射
	 * @return 过滤后的员工信息列表
	 */
	List<Admin> adminList(Map<String, Object> map);

	/**
	 * 员工信息修改
	 *
	 * @param admin 修改的员工信息
	 * @return 返回修改是否成功，成功为true，失败为false
	 */
	boolean adminUpdate(Admin admin);

	/**
	 * 创建管理员头像
	 *
	 * @param admin 管理员对象
	 * @return 返回创建管理员头像的结果
	 */
	boolean adminHeadIssue(Admin admin);

	/**
	 * 通过用户名查找用户信息
	 *
	 * @param adminName 用户名
	 * @return 用户信息的Admin对象
	 */
	Admin adminByName(String adminName);

	/**
	 * 通过管理员id查找用户信息
	 *
	 * @param adminId 管理员id
	 * @return 用户信息
	 */
	Admin adminById(int adminId);
}
