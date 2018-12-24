package departmentmanagement.service;

import departmentmanagement.dao.DepartmentDao;
import departmentmanagement.dao.DepartmentDaoHibernate;
import departmentmanagement.domain.Department;

import java.util.List;

public class DepartmentManagerImpl implements DepartmentManager {

	private DepartmentDao departmentDao = new DepartmentDaoHibernate();

	@Override
	public List fetchDepartments() {
		return departmentDao.fetchDepartments();
	}

	@Override
	public void addDepartment(Department department) {
		departmentDao.addOrUpdateDepartment(department);
	}
}
