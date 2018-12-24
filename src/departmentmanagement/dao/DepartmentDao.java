package departmentmanagement.dao;

import departmentmanagement.domain.Department;

import java.util.List;

public interface DepartmentDao {

	void addOrUpdateDepartment(Department department);

	List fetchDepartments();
}
