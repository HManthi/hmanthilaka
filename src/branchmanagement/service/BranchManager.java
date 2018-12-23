package branchmanagement.service;

import branchmanagement.domain.Branch;

import java.util.List;

public interface BranchManager {
	void addBranch(final Branch branch);

	List fetchBranches();
}
