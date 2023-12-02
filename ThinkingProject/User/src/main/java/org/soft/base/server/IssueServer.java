package org.soft.base.server;

import org.soft.base.constant.ImageUtils;
import org.soft.base.constant.SplitConstant;
import org.soft.base.constant.SplitEnum;
import org.soft.base.dao.ArticleDAO;
import org.soft.base.model.Article;
import org.soft.base.model.FileVO;
import org.soft.base.model.Human;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * @author lane
 */
@RestController
@RequestMapping("/issue")
public class IssueServer {
	private List<String> listOld = new ArrayList<>();

	@Autowired
	private ArticleDAO articleDao;

	@Autowired
	private ImageUtils imageUtils;

	/**
	 * 上传文章图片
	 *
	 * @param file 图片文件
	 * @return 文件上传信息
	 */
	@RequestMapping("/article-image-upload")
	public FileVO articleIssueController(@RequestParam("file") MultipartFile file) {
		// 创建一个FileVO对象
		FileVO fileVO = new FileVO();
		// 生成一个UUID作为文件名前缀
		UUID uuid = UUID.randomUUID();
		// 将时间戳和UUID拼接在文件名后面
		String fileName = System.currentTimeMillis() + uuid.toString() + file.getOriginalFilename();
		// 创建一个新的文件对象
		File fileNew = new File(SplitEnum.ARTICLE_IMAGE_UPLOAD_PATH.getValue().toString(), fileName);
		try {
			// 将文件内容传输到新文件中
			file.transferTo(fileNew);
			// 设置文件上传成功时的返回值为0
			fileVO.setErrno(0);
			// 创建一个包含文件名的数组
			String[] values = {SplitEnum.TAG.getValue() + fileName};
			// 将文件名添加到历史文件名列表中
			listOld.add(fileName);
			// 设置文件上传成功时的数据为文件名数组
			fileVO.setData(values);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 返回FileVO对象
		return fileVO;
	}

	/**
	 * 通过文章ID查询文章详细内容
	 *
	 * @param articleId 文章ID
	 * @return 查询到的文章详细内容
	 */
	@PostMapping("/getArticleById/{articleId}")
	public Article getArticleByIdForUpdate(@PathVariable("articleId") int articleId) {
		Article article = articleDao.getArticleById(articleId);
		return article;
	}

	/**
	 * 发布文章
	 *
	 * @param article 发布的文章
	 * @param human   发布者
	 * @return 发布是否成功
	 */
	@PostMapping("/articleIssue")
	public boolean articleIssue(Article article, @SessionAttribute("human") Human human) {
		int humanId = human.getHumanId();
		System.out.println("humanId = " + humanId);
		article.setHumanId(humanId);
		boolean issueResult = articleDao.articleIssue(article);
		if (issueResult) {
			String result = article.getResult();
			if (result != null) {
				String[] results = result.split(",");
				List<String> listOne = new ArrayList<>(Arrays.asList(results));
				for (String v1 : listOne) {
					// 去除标签，获取文件名
					v1 = v1.substring(SplitConstant.tag.length(), v1.length());
					listOld.remove(v1);
				}
			}
			if (listOld.size() > 0) {
				// 删除文件
				// for (String fileName : listOld) {
				//     File file = new File(path + fileName);
				//     file.delete();
				// }
				imageUtils.deleteFile(listOld);
			}
		}
		return issueResult;
	}
}
