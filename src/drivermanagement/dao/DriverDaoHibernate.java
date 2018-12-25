package drivermanagement.dao;

import common.util.HibernateUtil;
import drivermanagement.domain.Driver;
import drivermanagement.domain.DriverType;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class DriverDaoHibernate implements DriverDao {
	private Logger LOG = Logger.getLogger(DriverDaoHibernate.class);

	@SuppressWarnings("unchecked")
	@Override
	public List fetchDrivers() {
		List<Driver> driverList;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			Query query = session.getNamedQuery("fetchDrivers");
			driverList = query.list();
		}
		return driverList;
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

	@Override
	public void addDriver(Driver driver) {
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();

			session.beginTransaction();
			session.saveOrUpdate(driver);
			session.getTransaction().commit();
		} catch (HibernateException ex) {
			LOG.error("Couldn't save driver" + ex);
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
}
