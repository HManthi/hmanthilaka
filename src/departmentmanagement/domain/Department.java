package departmentmanagement.domain;

import common.domain.AbstractBaseEntity;

public class Department extends AbstractBaseEntity {
	private Long departmentId;
	private String departmentName;

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	@Override
	public Object getEntityId() {
		return getDepartmentId();
	}
}
