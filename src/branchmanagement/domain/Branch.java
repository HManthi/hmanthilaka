package branchmanagement.domain;

import java.util.Date;

public class Branch {

	private Long branchId;
	private String branchName;
	private String createdBy;
	private Date createdDatetime;
	private String modifiedBy;
	private String modifiedDatetime;

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

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDatetime() {
		return createdDatetime;
	}

	public void setCreatedDatetime(Date createdDatetime) {
		this.createdDatetime = createdDatetime;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public String getModifiedDatetime() {
		return modifiedDatetime;
	}

	public void setModifiedDatetime(String modifiedDatetime) {
		this.modifiedDatetime = modifiedDatetime;
	}
}
