package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Level1Reply {
	private int level1ReplyId;
	private int replyId;
	private int humanId;
	private String level1ReplyContent;
	private int level1ReplyLikeCount;
	private int level1ReplyDislikeCount;
	/**
	 * 回复时间，用Date還是還是String，之後處理
	 */
	private Date level1ReplyTime;
	/**
	 * 相對於數據庫表，新增
	 */
	private Human human;
}
