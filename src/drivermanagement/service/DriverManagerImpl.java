package drivermanagement.service;

import drivermanagement.dao.DriverDao;
import drivermanagement.dao.DriverDaoHibernate;
import drivermanagement.domain.Driver;
import org.apache.log4j.Logger;

import java.util.List;

public class DriverManagerImpl implements DriverManager {
	private Logger LOG = Logger.getLogger(DriverManagerImpl.class);

	private DriverDao driverDao = new DriverDaoHibernate();

	@Override
	public List fetchDrivers() {
		return driverDao.fetchDrivers();
	}

	@Override
	public List getDriverTypes() {
		LOG.info("getDriverTypes");
		return driverDao.getDriverTypes();
	}

	@Override
	public void addDriver(Driver driver) {
		driverDao.addDriver(driver);
	}
}
