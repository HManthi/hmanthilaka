package login.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import common.domain.Admin;
import common.domain.RoleEnum;
import login.service.LoginService;
import login.service.LoginServiceImpl;
import org.apache.commons.lang3.StringUtils;
import usermanagement.domain.User;

import java.util.Map;
import java.util.logging.Logger;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
	private static Logger LOG = Logger.getLogger(LoginAction.class.getName());

	private LoginService loginService;
	private User user = new User();

	public LoginAction() {
		loginService = new LoginServiceImpl();
	}

	@Override
	public void validate() {
		if (StringUtils.isEmpty(user.getUserName())) {
			addFieldError("userName", "Username cannot be empty");
		}
		if (StringUtils.isEmpty(user.getPassword())) {
			addFieldError("password" , "Password cannot be empty");
		}
	}

	@Override
	public String execute() throws Exception {

		if(user.getUserName().equals("a") && user.getPassword().equals("a")) {

			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String authenticate() {

		if (user.getUserName().equals("admin")
				&& user.getPassword().equals("admin")) {
			return "success";
		} else {
			addActionError(getText("error.login"));
			//a function from ActionSupport, to get properties values from properties file
			//we will explore this below.
			return "error";
		}
	}

	private User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public User getModel() {
		return getUser();
	}
}
