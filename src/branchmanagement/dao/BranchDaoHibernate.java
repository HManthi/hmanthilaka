package branchmanagement.dao;

import branchmanagement.domain.Branch;
import common.util.HibernateUtil;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.type.StringType;

import java.util.List;

public class BranchDaoHibernate implements BranchDao {
	private Logger LOG = Logger.getLogger(BranchDaoHibernate.class);

	@Override
	public void addOrUpdateBranch(Branch branch) {
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();

			session.beginTransaction();
			session.saveOrUpdate(branch);
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
	public List fetchBranches() {
		Query query;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			query = session.getNamedQuery("findBranches");
			return query.list();
		}
	}
}
