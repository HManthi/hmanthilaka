package usermanagement.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import common.util.CommonUtil;
import common.util.DateTimeUtil;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import usermanagement.domain.User;
import usermanagement.service.UserManager;
import usermanagement.service.UserManagerImpl;

import javax.servlet.http.HttpServletRequest;

import java.util.Map;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class UserAction extends ActionSupport implements ServletRequestAware, ModelDriven {
	public Logger LOG = Logger.getLogger(UserAction.class);

	private UserManager userManager = new UserManagerImpl();
	private User newUser = new User();
	private HttpServletRequest request;

	public String execute() {
		Map session = ActionContext.getContext().getSession();

		if (session.get("userName") != null) {
			return SUCCESS;
		}
		return LOGIN;
	}

	public String userManagement() {
		LOG.info("userManagement method");
		Map session = ActionContext.getContext().getSession();

		if (session.get("userName") != null) {
			return SUCCESS;
		}
		return LOGIN;
	}

	public String userAdd () {
		LOG.info("calling addUser method..");

		Map session = ActionContext.getContext().getSession();
		LOG.info("session.get(\"userName\")" + session.get("userName"));
		LOG.info("userName" + getServletRequest().getParameter("userName"));
		LOG.info("firstName" + getServletRequest().getParameter("firstName"));
		LOG.info("password" + getServletRequest().getParameter("password"));
		LOG.info("encpassword" + CommonUtil.getHash(getServletRequest().getParameter("password")));
		LOG.info("email" + getServletRequest().getParameter("email"));
		LOG.info("phone" + getServletRequest().getParameter("phone"));



		if (session.get("userName") != null) {
			newUser.setUserName(getServletRequest().getParameter("userName"));
			newUser.setFirstName(getServletRequest().getParameter("firstName"));
			newUser.setLastName(getServletRequest().getParameter("lastName"));
			newUser.setPassword(getServletRequest().getParameter("password"));
			newUser.setEncPassword(CommonUtil.getHash(getServletRequest().getParameter("password")));
//			newUser.setRoleId(Long.valueOf(getServletRequest().getParameter("roleId")));
			newUser.setEmail(getServletRequest().getParameter("email"));
			newUser.setPhone(getServletRequest().getParameter("phone"));
//			newUser.setBirthday(DateTimeUtil.parseDate(getServletRequest().getParameter("birthday"), "MM/dd/yyyy"));
//			newUser.setDepartmentId(Long.valueOf(getServletRequest().getParameter("departmentId")));
//			newUser.setBranchId(Long.valueOf(getServletRequest().getParameter("branchId")));

			userManager.addAppUser(newUser);
			return SUCCESS;
		}

		return LOGIN;
	}

	@Override
	public Object getModel() {
		return userManager;
	}

	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		this.request = httpServletRequest;
	}

	public HttpServletRequest getServletRequest() {
		return this.request;
	}
}
