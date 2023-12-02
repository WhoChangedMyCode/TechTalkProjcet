package org.soft.base.enums;

/**
 * 参数配置
 *
 * @author lane
 */
public enum BaseData {
	/**
	 * 管理員頭像上傳路經
	 */
	AVATAR_PATH(String.class, "/home/lane/Documents/Coding/ThinkingProject/ImageUploadPath/avatar/"),

	/**
	 * 公告圖片上傳路經
	 */
	ANNOUNCEMENT_PATH(String.class, "/home/lane/Documents/Coding/ThinkingProject/ImageUploadPath/announcement/"),

	/**
	 * 公告管理分每頁數據量
	 */
	ANNOUNCEMENT_SIZE(Integer.class, 5),

	/**
	 * 管理員每頁分頁數量
	 */
	ADMINISTRATOR_SIZE(Integer.class, 5);

	private final Class<?> type;
	private final Object value;

	BaseData(Class<?> type, Object value) {
		this.type = type;
		this.value = value;
	}

	public <T> T getValue() {
		@SuppressWarnings("unchecked")
		T result = (T) value;
		return result;
	}

}