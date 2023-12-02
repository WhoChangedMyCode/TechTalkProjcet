package org.soft.base.mapper;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.soft.base.model.Article;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Mapper
public interface ArticleDAOMapper {

	/**
	 * 发布文章
	 *
	 * @param article 文章对象
	 * @return 是否发布成功
	 */
	@Insert("INSERT INTO article(articleId,articleTitle,articleContent,articleIssueTime,humanId,typeId)"
			+ " VALUE (#{articleId},#{articleTitle},#{articleContent},now(),#{humanId},#{typeId})")
	boolean articleIssue(Article article);

	/**
	 * 通过文章ID查询文章详细内容
	 *
	 * @param articleId 文章ID
	 * @return 文章对象
	 */
	@Select("SELECT * FROM article WHERE articleId = #{articleId}")
	@Results({
			@Result(id = true, property = "articleId", column = "articleId"),
			@Result(property = "humanId", column = "humanId"),
			@Result(property = "typeId", column = "typeId"),
			@Result(property = "human", column = "humanId",
					one = @One(select = "org.soft.base.mapper.HumanDAOMapper.getHumanById")),
			@Result(property = "type", column = "typeId",
					one = @One(select = "org.soft.base.mapper.TypeDAOMapper.typeById"))
	})
	Article getArticleById(int articleId);

	/**
	 * 修改文章
	 *
	 * @param article 修改的文章信息
	 */
	@Update("UPDATE article SET articleTitle = #{articleTitle} ,articleContent = #{articleContent}, " +
			"articleIssueTime=now(),typeId = #{typeId} WHERE articleId = #{articleId}")
	void articleUpdate(Article article);

	/**
	 * 文章列表，分页
	 *
	 * @param map begin：起始位置 size：每页文章数量
	 * @return 文章列表
	 */
	@Select("SELECT * FROM article ORDER BY articleIssueTime DESC LIMIT #{begin},#{size}")
	@Results({
			@Result(id = true, property = "articleId", column = "articleId"),
			@Result(property = "human", column = "humanId",
					one = @One(select = "org.soft.base.mapper.HumanDAOMapper.getHumanById",
							fetchType = FetchType.EAGER))
	})
	List<Article> articlesByMap(Map<String, Object> map);

	/**
	 * 文章列表，类型分页
	 *
	 * @param map begin：起始位置 size：每页文章数量 typeId 类型
	 * @return 文章列表
	 */
	@Select("SELECT * FROM article WHERE typeId = #{typeId} ORDER BY articleIssueTime DESC LIMIT #{begin},#{size}")
	@Results({
			@Result(id = true, property = "articleId", column = "articleId"),
			@Result(property = "human", column = "humanId",
					one = @One(select = "org.soft.base.mapper.HumanDAOMapper.getHumanById",
							fetchType = FetchType.EAGER))
	})
	List<Article> articlesByTypeMap(Map<String, Object> map);

	/**
	 * 删除文章
	 *
	 * @param articleId 文章ID
	 * @return 删除是否成功
	 */
	@Delete("DELETE FROM article WHERE articleId = #{articleId}")
	boolean articleDeleteById(int articleId);

	/**
	 * 根据类型和页码获取文章列表
	 *
	 * @param map begin：起始位置 size：每页文章数量 typeId 类型
	 * @return 文章列表
	 */
	@Select("SELECT * FROM article WHERE humanId = #{humanId} ORDER BY articleIssueTime DESC LIMIT #{begin},#{size}")
	List<Article> articlesByHumanId(Map<String, Object> map);
}
