package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.soft.base.model.Level1Reply;

import java.util.List;

/**
 * @author lane
 */
@Mapper
public interface Leve1ReplyDAOMapper {
	/**
	 * 新增一级回复
	 *
	 * @param level1Reply - 一级回复信息
	 * @return - 新增是否成功
	 */
	@Insert("INSERT INTO level1Reply(replyId,humanId,level1ReplyContent,level1ReplyTime) " +
			"VALUE(#{replyId},#{humanId},#{level1ReplyContent},NOW())")
	boolean insertLevel1Reply(Level1Reply level1Reply);

	/**
	 * 根据零级回复id查询一级回复
	 *
	 * @param replyId - 一级回复id
	 * @return - 一级回复信息
	 */
	@Select("SELECT * FROM level1Reply WHERE replyId = #{replyId} ORDER BY level1ReplyLikeCount DESC")
	@Results({
			@Result(id = true, property = "level1ReplyId", column = "level1ReplyId"),
			@Result(property = "humanId", column = "humanId"),
			@Result(property = "human", column = "humanId",
					one = @One(select = "org.soft.base.mapper.HumanDAOMapper.getHumanById",
							fetchType = FetchType.EAGER))
	})
	List<Level1Reply> listLevel1ReplyByReplyId(int replyId);

	/**
	 * 更新一级回复点赞数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@Update("UPDATE level1Reply SET level1ReplyLikeCount = level1ReplyLikeCount + 1 WHERE level1ReplyId = #{level1ReplyId}")
	boolean updateLeve1ReplyLikeCount(int level1ReplyId);

	/**
	 * 更新一级回复点踩数
	 *
	 * @param level1ReplyId 一级回复的ID
	 * @return 更新是否成功
	 */
	@Update("UPDATE level1Reply SET level1ReplyDislikeCount = level1ReplyDislikeCount + 1 WHERE level1ReplyId = #{level1ReplyId}")
	boolean updateLeve1ReplyDislikeCount(int level1ReplyId);

	/**
	 * 删除一级回复
	 *
	 * @param level1ReplyId - 一级回复id
	 * @return - 删除是否成功
	 */
	@Delete("DELETE FROM level1Reply WHERE level1ReplyId = #{level1ReplyId}")
	boolean deleteLevel1ReplyById(int level1ReplyId);
}
