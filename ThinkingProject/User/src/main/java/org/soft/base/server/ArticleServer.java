package org.soft.base.server;

import org.soft.base.constant.ImageUtils;
import org.soft.base.constant.SplitEnum;
import org.soft.base.dao.ArticleDAO;
import org.soft.base.dao.ReplyDAO;
import org.soft.base.dao.SplitDAO;
import org.soft.base.mapper.SplitDAOMapper;
import org.soft.base.model.Article;
import org.soft.base.model.Human;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author lane
 */
@Controller
@RequestMapping("/article")
public class ArticleServer {
	@Autowired
	private ArticleDAO articleDao;

	@Autowired
	private SplitDAOMapper splitDAOMapper;

	@Autowired
	private SplitDAO splitDao;

	@Autowired
	private ReplyDAO replyDao;

	@Autowired
	private ImageUtils imageUtils;
	private String result;

	/**
	 * 在主頁查询指定页的内容，显示在指定的页面
	 *
	 * @param currentPage  当前页码
	 * @param modelAndView 模版对象
	 * @return 返回模版对象
	 */
	@RequestMapping("/articleList/{currentPage}")
	public ModelAndView articleList(@PathVariable("currentPage") int currentPage, ModelAndView modelAndView) {
		Map<String, Object> tableMap = new HashMap<>();
		tableMap.put("tableName", SplitEnum.TABLE_NAME.getValue());
		// 总行数
		int rows = splitDAOMapper.getArticleRows(tableMap);
		// 总页数
		int allPage = splitDao.allPage(rows, SplitEnum.INDEX_SPLIT_SIZE.getValue());
		int begin = 0;
		if (currentPage > 0) {
			// 当前页在数据库中开始的位置
			begin = splitDao.rowBegin(currentPage, SplitEnum.INDEX_SPLIT_SIZE.getValue());
		}
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("begin", begin);
		paramMap.put("size", SplitEnum.INDEX_SPLIT_SIZE.getValue());
		// 每页显示的内容
		List<Article> articles = articleDao.articlesByMap(paramMap);
		modelAndView.addObject("allPage", allPage);
		modelAndView.addObject("articles", articles);
		modelAndView.setViewName("index");
		return modelAndView;
	}

	/**
	 * 查询指定页的内容，显示在指定的页面
	 *
	 * @param currentPage  当前页数
	 * @param typeId       类型ID
	 * @param modelAndView 模型视图对象
	 * @return 返回模型视图对象
	 */
	@RequestMapping("/articleTypeList/{currentPage}/{typeId}")
	public ModelAndView articleTypeList(@PathVariable("currentPage") int currentPage, @PathVariable("typeId") int typeId, ModelAndView modelAndView) {
		// 定义一个表名为TABLE_NAME的键值对
		Map<String, Object> tableMap = new HashMap<>(2);
		tableMap.put("tableName", SplitEnum.TABLE_NAME.getValue());
		tableMap.put("typeId", typeId);

		// 获取总行数
		int rows = splitDAOMapper.getArticleRows(tableMap);
		// 计算总页数
		int allPage = splitDao.allPage(rows, SplitEnum.INDEX_SPLIT_SIZE.getValue());

		int begin = 0;
		// 如果当前页大于0，则计算当前页的起始位置
		if (currentPage > 0) {
			begin = splitDao.rowBegin(currentPage, SplitEnum.INDEX_SPLIT_SIZE.getValue());
		}

		// 定义一个包含起始位置、每页大小和类型ID的键值对
		Map<String, Object> paramMap = new HashMap<>(3);
		paramMap.put("begin", begin);
		paramMap.put("size", SplitEnum.INDEX_SPLIT_SIZE.getValue());
		paramMap.put("typeId", typeId);

		// 根据条件获取文章列表
		List<Article> articles = articleDao.articlesByTypeMap(paramMap);

		// 将总页数、文章列表和类型ID添加到模型视图
		modelAndView.addObject("allPage", allPage);
		modelAndView.addObject("articles", articles);
		modelAndView.addObject("typeId", typeId);

		// 设置视图名称为article/indexType
		modelAndView.setViewName("article/indexType");

		// 返回模型视图对象
		return modelAndView;
	}

	/**
	 * 通过文章ID查询文章详细内容
	 *
	 * @param articleId 文章ID
	 * @return 响应视图
	 */
	@RequestMapping("/articleById/{articleId}")
	public ModelAndView articleById(@PathVariable("articleId") int articleId, ModelAndView modelAndView) {
		Article article = articleDao.getArticleById(articleId);
		modelAndView.addObject("article", article);
		modelAndView.setViewName("article/articleById");
		return modelAndView;
	}

	/**
	 * 修改文章
	 *
	 * @param article 修改的文章信息
	 * @return 重定向到根据文章ID获取文章的页面
	 */
	@RequestMapping("/update")
	public ModelAndView articleUpdateById(Article article, ModelAndView modelAndView) {
		// 调用文章数据访问对象的方法，更新文章信息
		articleDao.articleUpdate(article);
		// 获取文章ID
		int articleId = article.getArticleId();
		// 通过文章ID获取文章，并将结果存储到modelAndView对象中
		modelAndView = articleById(articleId, modelAndView);
		// 返回重定向到根据文章ID获取文章的页面的结果
		return modelAndView;
	}

	/**
	 * 个人主頁分頁查尋
	 *
	 * @param currentPage  当前页码
	 * @param modelAndView 模版对象
	 * @param human        人类实例
	 * @return 返回个人主頁的视图
	 */
	@RequestMapping("/articleListById/{currentPage}")
	public ModelAndView articleListById(@PathVariable("currentPage") int currentPage, ModelAndView modelAndView, @SessionAttribute("human") Human human) {
		Map<String, Object> tableMap = new HashMap<>();
		tableMap.put("tableName", SplitEnum.TABLE_NAME.getValue());
		int humanId = human.getHumanId();
		tableMap.put("humanId", humanId);
		// 总行数
		int rows = splitDAOMapper.getArticleRows(tableMap);
		// 总页数
		int allPage = splitDao.allPage(rows, SplitEnum.PERSONAL_SPLIT_SIZE.getValue());

		int begin = 0;
		if (currentPage > 0) {
			// 分頁第一條記錄的索引
			begin = splitDao.rowBegin(currentPage, SplitEnum.PERSONAL_SPLIT_SIZE.getValue());
		}
		Map<String, Object> paramMap = new HashMap<>(3);
		paramMap.put("humanId", humanId);
		paramMap.put("begin", begin);
		paramMap.put("size", SplitEnum.PERSONAL_SPLIT_SIZE.getValue());
		List<Article> articles = articleDao.articlesByHumanId(paramMap);
		modelAndView.addObject("allPage", allPage);
		modelAndView.addObject("articles", articles);
		modelAndView.setViewName("view/index");
		return modelAndView;
	}

	/**
	 * 根据文章ID删除文章
	 *
	 * @param articleId 文章ID
	 * @return 登出页面的路径
	 */
	@RequestMapping("/del/{articleId}")
	public String articleDelById(@PathVariable("articleId") int articleId) {
		// 根据文章ID获取文章对象
		Article article = articleDao.getArticleById(articleId);
		// 从文章内容中提取图片链接
		String content = article.getArticleContent();
		List<String> imageList = imageUtils.getImageSrc(content);
		// 删除图片文件
		imageUtils.deleteFile(imageList);
		// 根据文章ID删除文章
		boolean b = articleDao.articleDeleteById(articleId);
		result = "view/login";
		if (b) {
			// 构造删除文章相关评论的映射参数
			Map<String, Object> map = new HashMap<>();
			map.put("tableName", "reply");
			map.put("articleId", articleId);
			// 获取与文章相关的评论行数
			int row = splitDAOMapper.getArticleRows(map);
			if (row > 0) {
				// 删除文章相关的所有评论
				b = replyDao.replyDeleteByArticleId(articleId);
			}
			result = "redirect:/article/articleListById/1";
		}
		return result;
	}
}
