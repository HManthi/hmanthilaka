package usermanagement.dao;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import common.util.HibernateUtil;
import org.hibernate.type.DateType;
import org.hibernate.type.LongType;
import org.hibernate.type.StringType;
import usermanagement.domain.User;
import usermanagement.web.UserAction;

public class UserDaoHibernate implements UserDao {
	private Logger LOG = Logger.getLogger(UserDaoHibernate.class);

	@Override
	public void addOrUpdateUser(User user) {
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();

			session.beginTransaction();
			session.saveOrUpdate(user);
			session.getTransaction().commit();
		} catch (HibernateException ex) {
			LOG.error("Couldn't save user" + ex);
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
}
