package org.soft.base.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.soft.base.model.Human;

/**
 * @author lane
 */
@Mapper
public interface HumanDAOMapper {

	/**
	 * 用户注册
	 *
	 * @param human 待插入的人类实体对象
	 * @return 插入是否成功的布尔值
	 */
	@Insert("INSERT INTO human (humanName,humanNiceName,humanPassword,humanEmail) VALUE (#{humanName},#{humanNiceName},#{humanPassword},#{humanEmail})")
	boolean humanRegisterMapper(Human human);

	/**
	 * 用户登錄
	 *
	 * @param human 待登录的用户对象
	 * @return 登录成功返回用户对象，登录失败返回null
	 */
	@Select("SELECT * FROM human WHERE humanName = #{humanName} AND humanPassword =#{humanPassword}")
	Human humanLoginMapper(Human human);

	/**
	 * 用户修改密碼
	 *
	 * @param human 要修改密碼的用户对象
	 * @return 是否成功修改密碼的返回值
	 */
	@Update("UPDATE human SET humanPassword = #{humanPassword} WHERE humanId = #{humanId}")
	boolean updateHumanPassword(Human human);

	/**
	 * 根据id查询
	 *
	 * @param humanId 查询的人类id
	 * @return 返回找到的人类对象，如果找不到则返回null
	 */
	@Select("SELECT * FROM human WHERE humanId = #{humanId}")
	Human getHumanById(int humanId);

	/**
	 * 更新人类信息的方法
	 *
	 * @param human 需要更新信息的人类对象
	 * @return 如果成功更新信息则返回true，否则返回false
	 */
	@Update("UPDATE human SET humanName = #{humanName}, humanNiceName = #{humanNiceName}," +
			" humanEmail = #{humanEmail}, humanDescribe = #{humanDescribe} WHERE humanId = #{humanId}")
	boolean updateInfo(Human human);
}
