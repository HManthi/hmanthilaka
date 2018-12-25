package drivermanagement.dao;

import drivermanagement.domain.Driver;

import java.util.List;

public interface DriverDao {
	List fetchDrivers();

	List getDriverTypes();

	void addDriver(Driver driver);
}
