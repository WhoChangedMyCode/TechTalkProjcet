package org.soft.base.dao;

import org.soft.base.model.Level1Reply;

import java.util.List;

/**
 * @author lane
 */
public interface Leve1ReplyDAO {
	/**
	 * 新增一级回复
	 *
	 * @param level1Reply - 一级回复信息
	 * @return - 新增是否成功
	 */
	boolean insertLevel1Reply(Level1Reply level1Reply);

	/**
	 * 根据零级回复id查询一级回复
	 *
	 * @param replyId - 一级回复id
	 * @return - 一级回复信息
	 */
	List<Level1Reply> listLevel1ReplyByReplyId(int replyId);

	/**
	 * 更新一级回复点赞数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	boolean updateLeve1ReplyLikeCount(int level1ReplyId);

	/**
	 * 更新一级回复点踩数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	boolean updateLeve1ReplyDislikeCount(int level1ReplyId);

	/**
	 * 删除一级回复
	 *
	 * @param level1ReplyId - 一级回复id
	 * @return - 删除是否成功
	 */
	boolean deleteLevel1ReplyById(int level1ReplyId);
}
