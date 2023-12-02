package org.soft.base.impl;

import org.soft.base.dao.ArticleDAO;
import org.soft.base.mapper.ArticleDAOMapper;
import org.soft.base.model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Controller
public class ArticleDAOImpl implements ArticleDAO {

	@Autowired
	private ArticleDAOMapper articleDAOMapper;

	/**
	 * 发布文章
	 *
	 * @param article 发布的文章对象
	 * @return 是否成功发布文章的布尔值
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean articleIssue(Article article) {
		boolean insertResult = articleDAOMapper.articleIssue(article);
		return insertResult;
	}

	/**
	 * 通过文章ID查询文章详细内容
	 *
	 * @param articleId 文章ID
	 * @return 查询到的文章详细内容
	 */
	@Override
	public Article getArticleById(int articleId) {
		Article articleResult = articleDAOMapper.getArticleById(articleId);
		return articleResult;
	}

	/**
	 * 修改文章
	 *
	 * @param article 修改的文章信息
	 */
	@Override
	public void articleUpdate(Article article) {
		articleDAOMapper.articleUpdate(article);
	}

	/**
	 * 根据指定的Map查询文章列表
	 *
	 * @param map 指定的Map对象，包含查询条件
	 * @return 文章列表
	 */
	@Override
	public List<Article> articlesByMap(Map<String, Object> map) {
		List<Article> articleListResult = articleDAOMapper.articlesByMap(map);
		return articleListResult;
	}

	/**
	 * 根据文章ID删除文章
	 *
	 * @param articleId 文章ID
	 * @return 删除是否成功
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean articleDeleteById(int articleId) {
		boolean deleteResult = articleDAOMapper.articleDeleteById(articleId);
		return deleteResult;
	}

	/**
	 * 查看指定用户的文章列表
	 *
	 * @param map - 包含指定用户的参数map
	 * @return 指定用户的文章列表
	 */
	@Override
	public List<Article> articlesByHumanId(Map<String, Object> map) {
		List<Article> articleListResult = articleDAOMapper.articlesByHumanId(map);
		return articleListResult;
	}

	/**
	 * 根据类型和页码获取文章列表
	 *
	 * @param map begin：起始位置 size：每页文章数量 typeId 类型
	 * @return 文章列表
	 */
	@Override
	public List<Article> articlesByTypeMap(Map<String, Object> map) {
		List<Article> articleListResult = articleDAOMapper.articlesByTypeMap(map);
		return articleListResult;
	}
}
