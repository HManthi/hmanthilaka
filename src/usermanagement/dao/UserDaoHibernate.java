package usermanagement.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import common.util.HibernateUtil;
import org.hibernate.type.DateType;
import org.hibernate.type.LongType;
import org.hibernate.type.StringType;
import usermanagement.domain.User;

public class UserDaoHibernate implements UserDao {

	@Override
	public void addOrUpdateUser(User user) {
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();

//			Query query = session.getNamedQuery("addUser");
//
//			query.setParameter("userName", user.getUserName(), StringType.INSTANCE);
//			query.setParameter("firstName", user.getFirstName(), StringType.INSTANCE);
//			query.setParameter("lastName", user.getLastName(), StringType.INSTANCE);
//			query.setParameter("encPassword", user.getEncPassword(), StringType.INSTANCE);
//			query.setParameter("password", user.getPassword(), StringType.INSTANCE);
////			query.setParameter("roleId", user.getRoleId(), LongType.INSTANCE);
//			query.setParameter("email", user.getEmail(), StringType.INSTANCE);
//			query.setParameter("phone", user.getPhone(), StringType.INSTANCE);
//			query.setParameter("birthday", user.getBirthday(), DateType.INSTANCE);
////			query.setParameter("departmentId", user.getDepartmentId(), LongType.INSTANCE);
////			query.setParameter("branchId", user.getBranchId(), LongType.INSTANCE);

			session.beginTransaction();
			session.saveOrUpdate(user);
//			query.executeUpdate();
			session.getTransaction().commit();
		} finally {
			if (session != null) {
				session.close();
			}
		}
//		try {
//
//            //Configuration configuration = new Configuration().configure();
//
//            //SessionFactory sessionFactory = configuration.buildSessionFactory();
////            SessionFactory sessionFactory =
////            	    new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
//
//            // 3. Get Session object
//            Session session = HibernateUtil.getSessionFactory().openSession();
//
//			//Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//
//            // 4. Starting Transaction
//            session.beginTransaction();
//            session.save(user);
//            session.getTransaction().commit();
//            //session.close();
//            System.out.println("\n\n Details Added \n");
//
//        } catch (HibernateException e) {
//            System.out.println(e.getMessage());
//            System.out.println("error");
//        }
		
	}
}
