package common.util;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

	private static Logger LOG = Logger.getLogger(HibernateUtil.class);

	  private static StandardServiceRegistry registry;
	  private static SessionFactory sessionFactory;

	  public static SessionFactory getSessionFactory() {
	  	try {
			Configuration configuration = new Configuration();
			configuration.configure("hibernate.cfg.xml")
			.addResource("usermanagement/domain/User.hbm.xml")
			.addResource("branchmanagement/domain/Branch.hbm.xml")
			.addResource("departmentmanagement/domain/Department.hbm.xml")
			.addResource("drivermanagement/domain/Driver.hbm.xml")
			.addResource("drivermanagement/domain/DriverType.hbm.xml")
			;

			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();

			if (sessionFactory == null) {
				sessionFactory = configuration.buildSessionFactory(serviceRegistry);
			}
			return sessionFactory;
		} catch (Throwable ex){
	  		LOG.error("Initial session factory creation failed.");
	  		throw new ExceptionInInitializerError(ex);
	  	}
	  }
	  
//	  private static final SessionFactory sessionFactory = buildSessionFactory();
//
//	    private static SessionFactory buildSessionFactory() {
//	        try {
//	            // Create the SessionFactory from hibernate.cfg.xml
//	            return new Configuration().configure().buildSessionFactory(
//	                new StandardServiceRegistryBuilder().build() );
//	            
////	            SessionFactory sessionFactory =
////	            	    new Configuration().configure().buildSessionFactory();
////	            return sessionFactory;
//	        }
//	        catch (Throwable ex) {
//	            // Make sure you log the exception, as it might be swallowed
//	            System.err.println("Initial SessionFactory creation failed." + ex);
//	            throw new ExceptionInInitializerError(ex);
//	        }
//	    }

//	    public static SessionFactory getSessionFactory() {
//	        return sessionFactory;
//	    }

	  public static void shutdown() {
	    if (registry != null) {
	      StandardServiceRegistryBuilder.destroy(registry);
	    }
	  }
	}
