package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * admin对应roles是多对多的关系，所有RoleRelation用于处理他们之间关系
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class RoleRelation {
    private int roleRelationId;
    private int adminId;
    private int roleId;
}
