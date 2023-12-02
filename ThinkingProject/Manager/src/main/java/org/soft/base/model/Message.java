package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 公告
 *
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Message {
	private int messageId;
	private String messageTitle;
	private String messageText;
	private Date messageTime;
	private int adminId;
	/**
	 * 數據庫表中沒有
	 */
	private Admin admin;
	/**
	 * 用于存储修改格式之后的时间
	 */
	private String time;

	public String getTime() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH点ss分mm秒");
		Date date = getMessageTime();
		return simpleDateFormat.format(date);
	}
}
