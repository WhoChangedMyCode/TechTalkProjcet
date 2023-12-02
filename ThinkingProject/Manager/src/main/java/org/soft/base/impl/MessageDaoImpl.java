package org.soft.base.impl;

import org.soft.base.dao.MessageDao;
import org.soft.base.mapper.MessageDaoMapper;
import org.soft.base.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Controller("messageDao")
public class MessageDaoImpl implements MessageDao {

	@Autowired
	private MessageDaoMapper messageDaoMapper;

	/**
	 * 发布公告
	 *
	 * @param message - 要发布的公告
	 * @return - 插入结果，成功返回true，失败返回false
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean messageIssue(Message message) {
		boolean insertResult = messageDaoMapper.messageIssue(message);
		return insertResult;
	}

	/**
	 * 分頁查尋的對應頁碼的公告
	 *
	 * @param map 分頁條件map，包含分頁大小、偏移量等信息
	 * @return 目錄列表
	 */
	@Override
	public List<Message> messageListByTime(Map<String, Object> map) {
		List<Message> messageListResult = messageDaoMapper.messageListByTime(map);
		return messageListResult;
	}

	/**
	 * 删除公告
	 *
	 * @param messageId 删除的消息ID
	 * @return 删除结果，成功返回true，失败返回false
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean messageDelById(int messageId) {
		boolean deleteResult = messageDaoMapper.messageDelById(messageId);
		return deleteResult;
	}

	/**
	 * 查看指定新闻
	 *
	 * @param messageId 新闻ID
	 * @return 查看的新闻
	 */
	@Override
	public Message messageById(int messageId) {
		Message messageResult = messageDaoMapper.messageById(messageId);
		return messageResult;
	}

	/**
	 * 查询最新的一条公告
	 *
	 * @return
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public Message getMessageNew() {
		Message messageResult = messageDaoMapper.getMessageNew();
		return messageResult;
	}

}
