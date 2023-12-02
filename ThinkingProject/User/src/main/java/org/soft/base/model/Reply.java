package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Reply {
	private int replyId;
	private String replyContent;
	private String replyTime;
	private int humanId;
	private int articleId;
	private int replyLikeCount;
	private int replyDislikeCount;
	/**
	 * 以下相對於數據庫表，新增
	 */
	private Human human;
}
