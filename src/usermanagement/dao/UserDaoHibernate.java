package usermanagement.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import common.util.HibernateUtil;
import usermanagement.domain.User;

public class UserDaoHibernate implements UserDao {

	@Override
	public void addOrpdateUser(User user) {
		try {
            
            //Configuration configuration = new Configuration().configure();
 
            //SessionFactory sessionFactory = configuration.buildSessionFactory();
//            SessionFactory sessionFactory =
//            	    new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 
            // 3. Get Session object
            Session session = HibernateUtil.getSessionFactory().openSession();
			
			//Session session = HibernateUtil.getSessionFactory().getCurrentSession();
 
            // 4. Starting Transaction
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
            //session.close();
            System.out.println("\n\n Details Added \n");
 
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            System.out.println("error");
        }
		
	}
}
