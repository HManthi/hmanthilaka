package branchmanagement.dao;

import branchmanagement.domain.Branch;

import java.util.List;

public interface BranchDao {
	void addOrUpdateBranch(Branch branch);

	List fetchBranches();
}
