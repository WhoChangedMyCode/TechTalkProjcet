package org.soft.base.impl;

import org.soft.base.dao.ReplyDAO;
import org.soft.base.mapper.ReplyDAOMapper;
import org.soft.base.model.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Controller
public class ReplyDAOImpl implements ReplyDAO {
	@Autowired
	private ReplyDAOMapper replyDAOMapper;

	/**
	 * 发布对应的文章的回复信息
	 *
	 * @param reply 回复信息
	 * @return 是否成功发布回复
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean replyIssue(Reply reply) {
		boolean issueResult = replyDAOMapper.replyIssueMapper(reply);
		return issueResult;
	}

	/**
	 * 分頁显示指定文章的回复信息
	 *
	 * @param map - 参数map，包含文章ID
	 * @return - 分頁显示的回复列表
	 */
	@Override
	public List<Reply> repliesByArticleId(Map<String, Object> map) {
	    List<Reply> replyList = replyDAOMapper.repliesByArticleIdMapper(map);
	    return replyList;
	}

	/**
	 * 删除指定的回复
	 *
	 * @param replyId 要删除的回复的ID
	 * @return 删除是否成功的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean replyDeleteById(int replyId) {
	    boolean deleteResult = replyDAOMapper.replyDeleteByIdMapper(replyId);
	    return deleteResult;
	}

	/**
	 * 根据文章ID删除回复
	 * @param articleId 文章ID
	 * @return 删除是否成功的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean replyDeleteByArticleId(int articleId) {
	    boolean deleteResult = replyDAOMapper.replyDeleteByArticleId(articleId);
	    return deleteResult;
	}

	/**
	 * 更新回复的点赞数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateLikeCount(int replyId) {
		boolean updateReult = replyDAOMapper.updateLikeCount(replyId);
		return updateReult;
	}

	/**
	 * 更新回复的点踩数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateDislikeCount(int replyId) {
		boolean updateReult = replyDAOMapper.updateDislikeCount(replyId);
		return updateReult;
	}
}
