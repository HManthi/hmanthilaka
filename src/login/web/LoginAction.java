package login.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import login.service.LoginService;
import login.service.LoginServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import usermanagement.domain.User;

import java.util.Map;


public class LoginAction extends ActionSupport implements ModelDriven<User> {
	private static Logger LOG = Logger.getLogger(LoginAction.class);

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
		LOG.info("login execute action");
         return SUCCESS;
	}

	public String userLogin() {
		User loginUser = loginService.authenticateUser(user);
		LOG.info("User name n pwd = " + user.getUserName() + " - " + user.getPassword());

		if (loginUser != null) {
			LOG.info(loginUser.getUserName() + " - successfully logged in");

			Map session = ActionContext.getContext().getSession();
			session.put("userName", loginUser.getUserName());
			session.put("password", loginUser.getPassword());
			session.put("roleId", loginUser.getRoleId());

			return SUCCESS;
		}

		return LOGIN;
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
