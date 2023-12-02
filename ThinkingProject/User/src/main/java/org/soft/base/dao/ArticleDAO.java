package org.soft.base.dao;

import org.soft.base.model.Article;

import java.util.List;
import java.util.Map;

public interface ArticleDAO {

	/**
	 * 发布文章
	 *
	 * @param article 发布的文章对象
	 * @return 是否成功发布文章的布尔值
	 */
	boolean articleIssue(Article article);

	/**
	 * 通过文章ID查询文章详细内容
	 *
	 * @param articleId 文章ID
	 * @return 查询到的文章详细内容
	 */
	Article getArticleById(int articleId);

	/**
	 * 修改文章
	 *
	 * @param article 修改的文章信息
	 */
	void articleUpdate(Article article);

	/**
	 * 文章列表，分页
	 *
	 * @param map begin：起始位置 size：每页文章数量
	 * @return 文章列表
	 */
	List<Article> articlesByMap(Map<String, Object> map);

	/**
	 * 删除文章
	 *
	 * @param articleId 文章ID
	 * @return 删除是否成功
	 */
	boolean articleDeleteById(int articleId);

	/**
	 * 查看指定用户的文章列表
	 *
	 * @param map - 一个包含查询条件的键值对集合对象
	 *            （map<String, Object>）
	 * @return - 返回一个包含文章列表的列表对象
	 * （List<Article>）
	 */
	List<Article> articlesByHumanId(Map<String, Object> map);

	/**
	 * 根据类型和页码获取文章列表
	 *
	 * @param map begin：起始位置 size：每页文章数量 typeId 类型
	 * @return 文章列表
	 */
	List<Article> articlesByTypeMap(Map<String, Object> map);
}

