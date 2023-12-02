package org.soft.base.server;

import org.soft.base.dao.TypeDAO;
import org.soft.base.model.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author lane
 */
@RestController
@RequestMapping("/type")
public class TypeServer {

	@Autowired
	private TypeDAO typeDao;

	/**
	 * 查询所有类型
	 *
	 * @return 所有类型
	 */
	@PostMapping("/typeList")
	public List<Type> typeListCtrl() {
		return typeDao.typeList();
	}

	/**
	 * 创建类型
	 *
	 * @param type 要创建的类型对象
	 * @return 如果创建成功返回true，否则返回false
	 */
	@RequestMapping("/typeIssue")
	public boolean typeCreateCtrl(Type type) {
		return typeDao.typeIssue(type);
	}

	/**
	 * 根据类型ID删除类型
	 *
	 * @param typeId 类型ID
	 * @return 删除是否成功的布尔值
	 */
	@RequestMapping("/typeDel/{typeId}")
	public boolean typeDelCtrl(@PathVariable("typeId") int typeId) {
		return typeDao.typeDelById(typeId);
	}

	/**
	 * 根据类型ID获取类型信息
	 *
	 * @param typeId 类型ID
	 * @return 类型对象
	 */
	@RequestMapping("/byId/{typeId}")
	public Type typeByIdCtrl(@PathVariable("typeId") int typeId) {
		return typeDao.typeById(typeId);
	}
}
