package org.soft.base.server;

import org.soft.base.dao.Leve1ReplyDAO;
import org.soft.base.model.Human;
import org.soft.base.model.Level1Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import java.util.List;

/**
 * @author lane
 */
@RestController
@RequestMapping("/level1Reply")
public class Leve1ReplyServer {
	@Autowired
	private Leve1ReplyDAO leve1ReplyDAO;

	/**
	 * 新增一级回复
	 *
	 * @param level1Reply - 一级回复信息
	 * @return - 新增是否成功
	 */
	@PostMapping("/insertLevel1Reply")
	public boolean insertLeve1Reply(Level1Reply level1Reply, @SessionAttribute("human") Human human) {
		int humanId = human.getHumanId();
		level1Reply.setHumanId(humanId);
		boolean insertResult = leve1ReplyDAO.insertLevel1Reply(level1Reply);
		return insertResult;
	}

	/**
	 * 根据一级回复id查询一级回复
	 *
	 * @param replyId - 一级回复id
	 * @return - 一级回复信息
	 */
	@PostMapping("/listLevel1ReplyByReplyId")
	List<Level1Reply> listLevel1ReplyByReplyId(int replyId) {
		List<Level1Reply> level1ReplyListResult = leve1ReplyDAO.listLevel1ReplyByReplyId(replyId);
		return level1ReplyListResult;
	}

	/**
	 * 更新一级回复点赞数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@PostMapping("/updateLeve1ReplyLikeCount")
	boolean updateLeve1ReplyLikeCount(int level1ReplyId) {
		boolean updateResult = leve1ReplyDAO.updateLeve1ReplyLikeCount(level1ReplyId);
		return updateResult;
	}

	/**
	 * 更新一级回复点踩数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@PostMapping("/updateLeve1ReplyDislikeCount")
	boolean updateLeve1ReplyDislikeCount(int level1ReplyId) {
		boolean updateResult = leve1ReplyDAO.updateLeve1ReplyDislikeCount(level1ReplyId);
		return updateResult;
	}

	/**
	 * 删除一级回复
	 *
	 * @param level1ReplyId - 一级回复id
	 * @return - 删除是否成功
	 */
	@PostMapping("/deleteLevel1ReplyById")
	boolean deleteLevel1ReplyById(int level1ReplyId) {
		boolean deleteResult = leve1ReplyDAO.deleteLevel1ReplyById(level1ReplyId);
		return deleteResult;
	}
}
