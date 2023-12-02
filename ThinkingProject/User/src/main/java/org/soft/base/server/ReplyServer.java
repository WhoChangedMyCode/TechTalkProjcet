package org.soft.base.server;

import org.soft.base.constant.SplitEnum;
import org.soft.base.dao.SplitDAO;
import org.soft.base.dao.ReplyDAO;
import org.soft.base.mapper.SplitDAOMapper;
import org.soft.base.model.Human;
import org.soft.base.model.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@RestController
@RequestMapping("/reply")
public class ReplyServer {

	@Autowired
	private ReplyDAO replyDao;

	@Autowired
	private SplitDAO splitDao;

	@Autowired
	private SplitDAOMapper splitDAOMapper;

	/**
	 * 发布回复信息
	 *
	 * @param reply 回复信息
	 * @param human 登录用户信息
	 */
	@PostMapping("/issue")
	public void repliesIssueServer(Reply reply, @SessionAttribute("human") Human human) {
		// 获取用户ID
		int humanId = human.getHumanId();
		// 将用户ID设置到回复对象中
		reply.setHumanId(humanId);
		// 调用数据库操作类的方法，发布回复信息
		replyDao.replyIssue(reply);
	}

	/**
	 * 分頁显示指定文章的回复信息
	 *
	 * @param articleId   文章ID
	 * @param currentPage 当前页码
	 * @return 包含回复列表和总页数的Map对象
	 */
	@RequestMapping("/split/{articleId}/{currentPage}")
	public Map<String, Object> repliesShowServer(@PathVariable("articleId") int articleId
			, @PathVariable("currentPage") int currentPage) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("articleId", articleId);
		int allPage = 0;
		int begin = 0;
		if (currentPage > 0) {
			Map<String, Object> tableMap = new HashMap<>();
			tableMap.put("tableName", "reply");
			tableMap.put("articleId", articleId);
			int rows = splitDAOMapper.getArticleRows(tableMap);
			allPage = splitDao.allPage(rows, SplitEnum.REPLY_SIZE.getValue());
			begin = splitDao.rowBegin(currentPage, SplitEnum.REPLY_SIZE.getValue());
		}
		paramMap.put("begin", begin);
		paramMap.put("size", SplitEnum.REPLY_SIZE.getValue());
		List<Reply> replyList = replyDao.repliesByArticleId(paramMap);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("replyList", replyList);
		resultMap.put("allPage", allPage);
		return resultMap;
	}

	/**
	 * 删除指定的回复
	 *
	 * @param replyId - 回复的ID
	 * @return 删除是否成功的布尔值
	 */
	@PostMapping("/del/{replyId}")
	public boolean replyDelById(@PathVariable("replyId") int replyId) {
		return replyDao.replyDeleteById(replyId);
	}

	/**
	 * 更新回复的点赞数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@PostMapping(value = "/updateLikeCount")
	public boolean updateLikeCount(int replyId) {
		boolean updateResult = replyDao.updateLikeCount(replyId);
		return updateResult;
	}

	/**
	 * 更新回复的点踩数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@PostMapping("/updateDislikeCount")
	public boolean updateDiskLikeCount(int replyId) {
		boolean updateResult = replyDao.updateDislikeCount(replyId);
		return updateResult;
	}

}
