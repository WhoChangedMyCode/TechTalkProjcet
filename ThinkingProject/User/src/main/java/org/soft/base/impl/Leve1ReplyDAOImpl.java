package org.soft.base.impl;

import org.soft.base.dao.Leve1ReplyDAO;
import org.soft.base.mapper.Leve1ReplyDAOMapper;
import org.soft.base.model.Level1Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author lane
 */
@Controller
public class Leve1ReplyDAOImpl implements Leve1ReplyDAO {

	@Autowired
	private Leve1ReplyDAOMapper leve1ReplyDAOMapper;

	/**
	 * 新增一级回复
	 *
	 * @param level1Reply - 一级回复信息
	 * @return - 新增是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean insertLevel1Reply(Level1Reply level1Reply) {
		boolean insertResult = leve1ReplyDAOMapper.insertLevel1Reply(level1Reply);
		return insertResult;
	}

	/**
	 * 根据零级回复id查询一级回复
	 *
	 * @param replyId - 一级回复id
	 * @return - 一级回复信息
	 */
	@Override
	public List<Level1Reply> listLevel1ReplyByReplyId(int replyId) {
		List<Level1Reply> level1ReplyList = leve1ReplyDAOMapper.listLevel1ReplyByReplyId(replyId);
		return level1ReplyList;
	}

	/**
	 * 更新一级回复点赞数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateLeve1ReplyLikeCount(int level1ReplyId) {
		boolean updateResult = leve1ReplyDAOMapper.updateLeve1ReplyLikeCount(level1ReplyId);
		return updateResult;
	}

	/**
	 * 更新一级回复点踩数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateLeve1ReplyDislikeCount(int level1ReplyId) {
		boolean updateResult = leve1ReplyDAOMapper.updateLeve1ReplyDislikeCount(level1ReplyId);
		return updateResult;
	}

	/**
	 * 删除一级回复
	 *
	 * @param level1ReplyId - 一级回复id
	 * @return - 删除是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteLevel1ReplyById(int level1ReplyId) {
		boolean deleteResult = leve1ReplyDAOMapper.deleteLevel1ReplyById(level1ReplyId);
		return deleteResult;
	}
}
