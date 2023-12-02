package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 管理员信息
 *
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Admin {
	private int adminId;
	private String adminName;
	private String adminPassword;
	private String adminHead;
	private Date adminBirthday;
	/**
	 * 权限列表
	 */
	private List<Role> roles;
	private String time;

	public String getTime() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日");
		Date date = null;
		if (getAdminBirthday() != null) {
			date = getAdminBirthday();
			return simpleDateFormat.format(date);
		} else {
			return null;
		}
	}
}
