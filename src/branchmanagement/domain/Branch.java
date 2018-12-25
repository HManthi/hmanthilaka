package branchmanagement.domain;

import common.domain.AbstractBaseEntity;

public class Branch extends AbstractBaseEntity {
	private Long branchId;
	private String branchName;

	public Long getBranchId() {
		return branchId;
	}

	public void setBranchId(Long branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	@Override
	public Object getEntityId() {
		return getBranchId();
	}
}
