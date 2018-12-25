package drivermanagement.service;

import drivermanagement.dao.DriverDao;
import drivermanagement.dao.DriverDaoHibernate;

import java.util.List;

public class DriverManagerImpl implements DriverManager {

	private DriverDao driverDao = new DriverDaoHibernate();

	@Override
	public List fetchDriverTypes() {
		return null;
	}
}
