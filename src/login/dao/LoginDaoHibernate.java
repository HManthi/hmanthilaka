package login.dao;

import common.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.type.StringType;
import usermanagement.domain.User;

public class LoginDaoHibernate implements LoginDao {
	@Override
	public User authenticateUser(User user) {

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			Query query = session.getNamedQuery("getAuthenticateUser");
			query.setParameter("userName", user.getUserName(), StringType.INSTANCE);
			query.setParameter("password", user.getPassword(), StringType.INSTANCE);

			return (User) query.uniqueResult();
		}
	}
}
