package org.soft.base.dao;

import org.soft.base.model.Reply;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
public interface ReplyDAO {

	/**
	 * 发布对应文章的回复信息
	 *
	 * @param reply - 回复信息
	 * @return - 返回是否成功发布回复
	 */
	boolean replyIssue(Reply reply);

	/**
	 * 分頁显示指定文章的回复信息
	 *
	 * @param map - 查询条件映射表，包含文章ID等信息
	 * @return 指定文章的回复信息列表
	 */
	List<Reply> repliesByArticleId(Map<String, Object> map);


	/**
	 * 删除指定的回复
	 *
	 * @param replyId 回复ID
	 * @return 删除是否成功
	 */
	boolean replyDeleteById(int replyId);

	/**
	 * 删除文章相关的回复
	 *
	 * @param articleId - 文章的ID
	 * @return - 删除是否成功
	 */
	boolean replyDeleteByArticleId(int articleId);

	/**
	 * 更新回复的点赞数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	boolean updateLikeCount(int replyId);

	/**
	 * 更新回复的点踩数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	boolean updateDislikeCount(int replyId);
}
