package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author lane
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Article {
	private int articleId;
	private String articleTitle;
	private String articleContent;
	private Date articleIssueTime;
	private int humanId;
	private Human human;
	private int typeId;
	/**
	 * 以下相對於數據庫表，新增
	 */
	private Type type;
	private String result;
}
