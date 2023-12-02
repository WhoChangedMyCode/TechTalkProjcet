package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.soft.base.model.Reply;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Mapper
public interface ReplyDAOMapper {
	/**
	 * 发布回复信息到对应文章
	 *
	 * @param reply 回复信息
	 * @return 是否成功发布回复
	 */
	@Insert("INSERT INTO reply (replyContent,replyTime,humanId,articleId) VALUE (#{replyContent},NOW(),#{humanId},#{articleId})")
	boolean replyIssueMapper(Reply reply);

	/**
	 * 分頁显示指定文章的回复信息
	 *
	 * @param map - 参数映射
	 * @return 分頁显示指定文章的回复信息
	 */
	@Select("SELECT * FROM reply WHERE articleId = #{articleId} ORDER BY replyLikeCount DESC LIMIT #{begin},#{size}")
	@Results({
			@Result(id = true, column = "replyId", property = "replyId"),
			@Result(column = "humanId", property = "humanId"),
			@Result(column = "articleId", property = "articleId"),
			@Result(property = "human", column = "humanId",
					one = @One(select = "org.soft.base.mapper.HumanDAOMapper.getHumanById"))
	})
	List<Reply> repliesByArticleIdMapper(Map<String, Object> map);

	/**
	 * 删除指定的回复
	 *
	 * @param replyId - 回复ID
	 * @return 删除成功返回true，否则返回false
	 */
	@Delete("DELETE FROM reply WHERE replyId = #{replyId}")
	boolean replyDeleteByIdMapper(int replyId);

	/**
	 * 删除文章相关的回复
	 *
	 * @param articleId - 文章ID
	 * @return - 删除是否成功
	 */
	@Delete("DELETE FROM reply WHERE articleId = #{articleId}")
	boolean replyDeleteByArticleId(int articleId);

	/**
	 * 更新回复的点赞数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@Update("UPDATE reply SET replyLikeCount = replyLikeCount + 1 WHERE replyId = #{replyId}")
	boolean updateLikeCount(int replyId);

	/**
	 * 更新回复的点踩数
	 *
	 * @param replyId 回复的ID
	 * @return 更新是否成功
	 */
	@Update("UPDATE reply SET replyDislikeCount = replyDislikeCount + 1 WHERE replyId = #{replyId}")
	boolean updateDislikeCount(int replyId);

}
