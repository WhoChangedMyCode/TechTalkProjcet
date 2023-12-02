package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 文章类型
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Type {
    private int typeId;
    private String typeName;
}
