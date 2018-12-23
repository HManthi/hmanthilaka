package branchmanagement.dao;

import branchmanagement.domain.Branch;
import common.util.HibernateUtil;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;

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
}
