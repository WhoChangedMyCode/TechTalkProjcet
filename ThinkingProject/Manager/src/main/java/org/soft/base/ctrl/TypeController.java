package org.soft.base.ctrl;

import org.soft.base.dao.TypeDao;
import org.soft.base.model.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author lane
 */
@RestController
@RequestMapping("type")
public class TypeController {

	@Autowired
	@Qualifier("typeDao")
	private TypeDao typeDao;

	/**
	 * 发起一个类型的问题
	 *
	 * @param type 类型对象
	 * @return 如果成功发起问题返回true，否则返回false
	 */
	@PostMapping("/issue")
	public boolean typeIssueCtrl(Type type) {
		boolean insertResult = typeDao.typeIssue(type);
		return insertResult;
	}

	/**
	 * 显示所有类型的接口
	 *
	 * @return 类型列表
	 */
	@PostMapping("/types")
	public List<Type> typesShowCtrl() {
		List<Type> typeListRsult = typeDao.typeList();
		return typeListRsult;
	}

	/**
	 * 根据类型ID删除类型
	 *
	 * @param typeId 类型ID
	 * @return 删除结果，成功返回true，失败返回false
	 */
	@PostMapping("/del/{typeId}")
	public boolean typeDelCtrl(@PathVariable("typeId") int typeId) {
		boolean delResult = typeDao.typeDelById(typeId);
		return delResult;
	}

	/**
	 * 更新类型
	 *
	 * @param type 类型对象
	 * @return 更新结果，成功返回true，失败返回false
	 */
	@PostMapping("/update")
	public boolean typeUpdateCtrl(Type type) {
		boolean updatesResult = typeDao.typeUpdate(type);
		return updatesResult;
	}
}
