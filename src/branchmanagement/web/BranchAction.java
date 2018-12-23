package branchmanagement.web;

import branchmanagement.domain.Branch;
import branchmanagement.service.BranchManager;
import branchmanagement.service.BranchManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import common.util.CommonUtil;
import common.util.DateTimeUtil;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import javax.xml.stream.events.DTD;
import java.util.List;
import java.util.Map;

public class BranchAction  extends ActionSupport implements ServletRequestAware, ModelDriven {
	private Logger LOG = Logger.getLogger(BranchAction.class);

	private BranchManager branchManager = new BranchManagerImpl();
	private Branch newBranch = new Branch();
	private HttpServletRequest request;
	private List branchList;

	@Override
	public Object getModel() {
		return branchManager;
	}

	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		this.request = httpServletRequest;
	}

	public HttpServletRequest getServletRequest() {
		return this.request;
	}

	public void setBranchList(List branchList) {
		this.branchList = branchList;
	}

	public List getBranchList() {
		return branchList;
	}

	public String branchFetch() {
		LOG.info("calling fetch branch method..");
		Map session = ActionContext.getContext().getSession();

		if (session.get("userName") != null) {
			branchList = branchManager.fetchBranches();

			LOG.info(branchList.toString());

			return SUCCESS;
		}
		return LOGIN;
	}

	public String branchAdd() {
		LOG.info("calling branchAdd method..");

		Map session = ActionContext.getContext().getSession();
		LOG.info("session.get(\"userName\") = " + session.get("userName"));
		LOG.info("branchName = " + getServletRequest().getParameter("branchName"));

		if (session.get("userName") != null) {
			newBranch.setBranchName(getServletRequest().getParameter("branchName"));
			newBranch.setCreatedBy(String.valueOf(session.get("userName")));
			newBranch.setCreatedDatetime(DateTimeUtil.getSystemDate());

			branchManager.addBranch(newBranch);
			branchList = branchManager.fetchBranches();
			return SUCCESS;
		}

		return LOGIN;
	}
}