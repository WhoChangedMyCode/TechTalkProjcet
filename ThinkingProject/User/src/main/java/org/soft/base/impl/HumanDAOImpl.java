package org.soft.base.impl;

import org.soft.base.dao.HumanDAO;
import org.soft.base.mapper.HumanDAOMapper;
import org.soft.base.model.Human;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author lane
 */
@Controller
public class HumanDAOImpl implements HumanDAO {

	@Autowired
	private HumanDAOMapper humanDAOMapper;

	/**
	 * 用户注册
	 *
	 * @param human 要注册的用户对象
	 * @return 注册是否成功，成功为true，失败为false
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean humanRegister(Human human) {
		boolean registerResult = humanDAOMapper.humanRegisterMapper(human);
		return registerResult;
	}

	/**
	 * 用户登录
	 *
	 * @param human 登录用户对象
	 * @return 登录结果的人类对象
	 */
	@Override
	public Human humanLogin(Human human) {
		Human humanResult = humanDAOMapper.humanLoginMapper(human);
		return humanResult;
	}

	/**
	 * 用户修改密碼
	 *
	 * @param human            要修改密碼的用户对象
	 * @param oldHumanPassword 老密碼
	 * @return 是否成功修改密碼的返回值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateHumanPassword(Human human, String oldHumanPassword) {
		boolean updateResult = false;
		// 在修改密碼前，驗證舊密碼是否正確
		int humanId = human.getHumanId();
		Human checkHuman = this.getHumanById(humanId);
		String originalPassword = checkHuman.getHumanPassword();
		if (oldHumanPassword.equals(originalPassword)) {
			// 修改新密碼
			updateResult = humanDAOMapper.updateHumanPassword(human);
		}
		return updateResult;
	}

	/**
	 * 更新人类信息的方法
	 *
	 * @param human 需要更新信息的人类对象
	 * @return 如果成功更新信息则返回true，否则返回false
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateInfo(Human human) {
		boolean updateResult = humanDAOMapper.updateInfo(human);
		return updateResult;
	}

	/**
	 * 根据id查询
	 *
	 * @param humanId 查询的人类id
	 * @return 返回找到的人类对象，如果找不到则返回null
	 */
	@Override
	public Human getHumanById(int humanId) {
		Human humanResult = humanDAOMapper.getHumanById(humanId);
		return humanResult;
	}
}
