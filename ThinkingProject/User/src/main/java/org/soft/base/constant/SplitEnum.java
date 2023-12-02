package org.soft.base.constant;

/**
 * @author lane
 */

public enum SplitEnum {
	/**
	 * 首頁每页显示文章的数量
	 */
	INDEX_SPLIT_SIZE(Integer.class, 10),
	/**
	 * 个人中心每页显示数据的数量
	 */
	PERSONAL_SPLIT_SIZE(Integer.class, 5),
	/**
	 * 回复每页显示数量
	 */
	REPLY_SIZE(Integer.class, 5),
	/**
	 * 用於MyBatis動態SQL語句的數據庫表名
	 */
	TABLE_NAME(String.class, "article"),
	/**
	 * 文章图片上传路径
	 */
	ARTICLE_IMAGE_UPLOAD_PATH(String.class, "/home/lane/Documents/Coding/ThinkingProject/ImageUploadPath/article/"),
	TAG(String.class, "/editorimages/");
	private final Class<?> type;
	private final Object value;

	/**
	 * 构造函数，用于创建SplitEnum对象
	 *
	 * @param type 分开的类型
	 * @param value 分开的值
	 */
	SplitEnum(Class<?> type, Object value) {
	    this.type = type;
	    this.value = value;
	}

	/**
	 * 获取枚举值
	 *
	 * @param <T> 任意类型
	 * @return 枚举值
	 */
	public <T> T getValue() {
		@SuppressWarnings("unchecked")
		T result = (T) value;
		return result;
	}

}
