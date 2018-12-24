package departmentmanagement.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import common.util.DateTimeUtil;
import departmentmanagement.domain.Department;
import departmentmanagement.service.DepartmentManager;
import departmentmanagement.service.DepartmentManagerImpl;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class DepartmentAction extends ActionSupport implements ServletRequestAware, ModelDriven {

	private Logger LOG = Logger.getLogger(DepartmentAction.class);

	private DepartmentManager departmentManager = new DepartmentManagerImpl();
	private Department newDepartment = new Department();
	private HttpServletRequest request;
	private List departmentList;

	@Override
	public Object getModel() {
		return departmentManager;
	}

	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		this.request = httpServletRequest;
	}

	public HttpServletRequest getServletRequest() {
		return this.request;
	}

	public List getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List departmentList) {
		this.departmentList = departmentList;
	}

	public String departmentFetch() {
		LOG.info("calling fetch department method..");
		Map session = ActionContext.getContext().getSession();

		if (session.get("userName") != null) {
			departmentList = departmentManager.fetchDepartments();

			return SUCCESS;
		}
		return LOGIN;
	}

	public String departmentAdd() {
		LOG.info("calling departmentAdd method..");

		Map session = ActionContext.getContext().getSession();
		LOG.info("session.get(\"userName\") = " + session.get("userName"));
		LOG.info("departmentName = " + getServletRequest().getParameter("departmentName"));

		if (session.get("userName") != null) {
			newDepartment.setDepartmentName(getServletRequest().getParameter("departmentName"));
			newDepartment.setCreatedBy(String.valueOf(session.get("userName")));
			newDepartment.setCreatedDatetime(DateTimeUtil.getSystemDate());

			departmentManager.addDepartment(newDepartment);
			departmentList = departmentManager.fetchDepartments();
			return SUCCESS;
		}

		return LOGIN;
	}
}
