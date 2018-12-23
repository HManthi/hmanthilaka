package branchmanagement.dao;

import branchmanagement.domain.Branch;

import java.util.List;

public interface BranchDao {
	public void addOrUpdateBranch(Branch user);

	List fetchBranches();
}
