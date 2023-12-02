package org.soft.base.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * wangEditor上传图片成功之后返回对象
 *
 * @author lane
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class FileVO {
	private int errno;
	private String[] data;
}
