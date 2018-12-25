package drivermanagement.domain;

import common.domain.AbstractBaseEntity;

import java.util.Date;

public class Driver extends AbstractBaseEntity {
	private Long driverId;
	private String driverName;
	private String address;
	private String contactNum;
	private String licenseNum;
	private String gender;
	private Long driverTypeId;
	private Date issueDate;
	private Date expireDate;

	@Override
	public Object getEntityId() {
		return getDriverId();
	}

	public Long getDriverId() {
		return driverId;
	}

	public void setDriverId(Long driverId) {
		this.driverId = driverId;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNum() {
		return contactNum;
	}

	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}

	public String getLicenseNum() {
		return licenseNum;
	}

	public void setLicenseNum(String licenseNum) {
		this.licenseNum = licenseNum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Long getDriverTypeId() {
		return driverTypeId;
	}

	public void setDriverTypeId(Long driverTypeId) {
		this.driverTypeId = driverTypeId;
	}

	public Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public Date getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
}
