package drivermanagement.domain;

public class Driver {
	private Long driverTypeId;
	private String driverType;

	public Long getDriverTypeId() {
		return driverTypeId;
	}

	public void setDriverTypeId(Long driverTypeId) {
		this.driverTypeId = driverTypeId;
	}

	public String getDriverType() {
		return driverType;
	}

	public void setDriverType(String driverType) {
		this.driverType = driverType;
	}
}
