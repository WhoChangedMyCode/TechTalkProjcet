package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 权限
 *
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Role {
	private int roleId;
	private String roleName;
	private String roleDesc;
}
