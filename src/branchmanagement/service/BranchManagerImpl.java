package branchmanagement.service;

import branchmanagement.dao.BranchDao;
import branchmanagement.dao.BranchDaoHibernate;
import branchmanagement.domain.Branch;

import java.util.List;

public class BranchManagerImpl implements BranchManager {

	private BranchDao branchDao = new BranchDaoHibernate();

	@Override
	public void addBranch(Branch branch) {
		branchDao.addOrUpdateBranch(branch);
	}

	@Override
	public List fetchBranches() {

		return branchDao.fetchBranches();
	}
}
