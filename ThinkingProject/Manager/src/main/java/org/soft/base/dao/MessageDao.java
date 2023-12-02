package org.soft.base.dao;

import org.soft.base.model.Message;

import java.util.List;
import java.util.Map;

/**
 * 公告管理
 *
 * @author lane
 */
public interface MessageDao {
	/**
	 * 发布公告
	 *
	 * @param message 公告内容
	 * @return 是否成功发布公告
	 */
	boolean messageIssue(Message message);


	/**
	 * 分頁查尋的對應頁碼的公告
	 *
	 * @param map 分頁条件参数
	 * @return 对应页码的公告列表
	 */
	List<Message> messageListByTime(Map<String, Object> map);

	/**
	 * 删除公告
	 *
	 * @param messageId 删除公告的消息ID
	 * @return 删除是否成功
	 */
	boolean messageDelById(int messageId);

	/**
	 * 查看指定新闻
	 *
	 * @param messageId 新闻ID
	 * @return 指定新闻消息对象
	 */
	Message messageById(int messageId);

	/**
	 * 查询最新的一条公告
	 *
	 * @return 最新的公告信息
	 */
	Message getMessageNew();

}
