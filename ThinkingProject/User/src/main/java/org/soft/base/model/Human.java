package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author lane
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Human implements Serializable {
	private int humanId;
	private String humanName;
	private String humanPassword;
	private String humanEmail;
	private String humanNiceName;
	private String humanDescribe;
	/**
	 * 修改密码时使用，不存在於於數據庫表中
	 */
	private String oldHumanPassword;
}