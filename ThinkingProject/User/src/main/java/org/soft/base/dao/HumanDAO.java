package org.soft.base.dao;

import org.soft.base.model.Human;

/**
 * @author lane
 */
public interface HumanDAO {
	/**
	 * 用户注册
	 *
	 * @param human 要注册的用户对象
	 * @return 注册是否成功，成功为true，失败为false
	 */
	boolean humanRegister(Human human);

	/**
	 * 用户登录
	 *
	 * @param human 登录用户对象
	 * @return 登录结果的人类对象
	 */
	Human humanLogin(Human human);

	/**
	 * 用户修改密碼
	 *
	 * @param human 要修改密碼的用户对象
	 * @param oldHumanPassword 要修改密碼的旧密碼
	 * @return 是否成功修改密碼的返回值
	 */
	boolean updateHumanPassword(Human human, String oldHumanPassword);

	/**
	 * 更新人类信息的方法
	 *
	 * @param human 需要更新信息的人类对象
	 * @return 如果成功更新信息则返回true，否则返回false
	 */
	boolean updateInfo(Human human);

	/**
	 * 根据id查询
	 *
	 * @param humanId 查询的人类id
	 * @return 返回找到的人类对象，如果找不到则返回null
	 */
	Human getHumanById(int humanId);
}
