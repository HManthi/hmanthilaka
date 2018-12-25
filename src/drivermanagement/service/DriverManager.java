package drivermanagement.service;

import drivermanagement.domain.Driver;

import java.util.List;

public interface DriverManager {
	List fetchDrivers();

	List getDriverTypes();

	void addDriver(Driver driver);
}
