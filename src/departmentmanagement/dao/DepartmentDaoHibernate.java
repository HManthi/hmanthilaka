package departmentmanagement.dao;

import common.util.HibernateUtil;
import departmentmanagement.domain.Department;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class DepartmentDaoHibernate implements DepartmentDao {
	private Logger LOG = Logger.getLogger(DepartmentDaoHibernate.class);

	@Override
	public void addOrUpdateDepartment(Department department) {
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();

			session.beginTransaction();
			session.saveOrUpdate(department);
			session.getTransaction().commit();
		} catch (HibernateException ex) {
			LOG.error("Couldn't save branch" + ex);
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	@Override
	public List fetchDepartments() {
		Query query;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			query = session.getNamedQuery("findDepartments");
			return query.list();
		}
	}
}
