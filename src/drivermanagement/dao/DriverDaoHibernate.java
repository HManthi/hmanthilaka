package drivermanagement.dao;

import common.util.HibernateUtil;
import drivermanagement.domain.DriverType;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class DriverDaoHibernate implements DriverDao {
	@Override
	public List fetchDrivers() {
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List getDriverTypes() {

		List<DriverType> driverTypes;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			Query query = session.getNamedQuery("getDriverTypes");
			driverTypes = query.list();
		}
		return driverTypes;
	}
}
