package departmentmanagement.service;

import departmentmanagement.domain.Department;

import java.util.List;

public interface DepartmentManager {
	List fetchDepartments();

	void addDepartment(Department department);
}
