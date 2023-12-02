package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.soft.base.model.Admin;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Mapper
public interface AdminDaoMapper {
	/**
	 * 管理员创建
	 *
	 * @param admin - Admin对象，包含管理员的信息
	 * @return boolean - 创建是否成功
	 */
	@Insert("INSERT INTO admin (adminName,adminPassword,adminBirthday) VALUE (#{adminName},#{adminPassword},#{adminBirthday})")
	boolean adminCreate(Admin admin);

	/**
	 * 查询员工信息列表
	 *
	 * @param map 查询参数，包括起始位置和数量
	 * @return 查询到的员工信息列表
	 */
	@Select("SELECT * FROM admin LIMIT #{begin},#{size}")
	List<Admin> adminList(Map<String, Object> map);

	/**
	 * 员工信息修改
	 *
	 * @param admin 要更新的员工对象
	 * @return 更新是否成功，成功返回true，否则返回false
	 */
	@Update("UPDATE admin SET adminPassword = #{adminPassword} WHERE adminId = #{adminId}")
	boolean adminUpdate(Admin admin);

	/**
	 * 创建管理员头像
	 *
	 * @param admin - 管理员对象，包含头像信息
	 * @return 更新是否成功
	 */
	@Update("UPDATE admin SET adminHead = #{adminHead} WHERE adminId = #{adminId}")
	boolean adminHeadIssue(Admin admin);

	/**
	 * 通过用户名查找用户信息
	 * fetchType = FetchType.EAGER 查询one的时候，一并把many中的数据都抓取
	 * fetchType = FetchType.LAZY 查询one的时候不会查询many，知道使用many时才会自动查询many的数据
	 *
	 * @param adminName 用户名
	 * @return 查询到的用户信息
	 */
	@Select("SELECT * FROM admin WHERE adminName = #{adminName}")
	@Results({
			@Result(id = true, property = "adminId", column = "adminId"),
			@Result(property = "roles", column = "adminId",
					many = @Many(select = "org.soft.base.mapper.RoleDaoMapper.roleByAdminId",
							fetchType = FetchType.EAGER)
			)
	})
	Admin adminByName(String adminName);

	/**
	 * 通过管理员id查找用户信息
	 *
	 * @param adminId 管理员id
	 * @return Admin对象，包含用户信息
	 */
	@Select("SELECT * FROM admin WHERE adminId = #{adminId}")
	Admin adminById(int adminId);
}
