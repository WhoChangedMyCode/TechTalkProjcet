package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.soft.base.model.Message;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Mapper
public interface MessageDaoMapper {
	/**
	 * 发布公告
	 *
	 * @param message - 公告内容
	 * @return - 是否成功发布公告
	 */
	@Insert("INSERT INTO message (messageTitle, messageText, messageTime, adminId)" +
			" VALUE (#{messageTitle}, #{messageText}, now(), #{adminId})")
	boolean messageIssue(Message message);

	/**
	 * 分頁查尋的對應頁碼的公告
	 *
	 * @param map - 参数 map 对象
	 * @return 分頁公告列表
	 */
	@Select("SELECT messageId, messageTitle, messageTime FROM message ORDER BY messageTime DESC LIMIT #{begin},#{size}")
	List<Message> messageListByTime(Map<String, Object> map);

	/**
	 * 删除公告
	 *
	 * @param messageId: 公告ID
	 * @return 删除是否成功
	 */
	@Delete("DELETE FROM message WHERE messageId = #{messageId}")
	boolean messageDelById(int messageId);

	/**
	 * 查看指定新闻
	 *
	 * @param messageId 新闻编号
	 * @return 指定新闻的信息
	 */
	@Select("SELECT * FROM message WHERE messageId = #{messageId}")
	@Results({
			@Result(property = "messageId", id = true, column = "messageId"),
			@Result(property = "messageTitle", column = "messageTitle"),
			@Result(property = "messageTime", column = "messageTime"),
			@Result(property = "adminId", column = "adminId"),
			@Result(property = "admin", column = "adminId",
					one = @One(select = "org.soft.base.mapper.AdminDaoMapper.adminById"))
	})
	Message messageById(int messageId);

	/**
	 * 查询最新的一条公告
	 *
	 * @return 公告信息
	 */
	@Select("SELECT * FROM message ORDER BY messageTime DESC LIMIT 1")
	@Results({
			@Result(property = "admin", column = "adminId",
					one = @One(select = "org.soft.base.mapper.AdminDaoMapper.adminById")
			)
	})
	Message getMessageNew();
}
