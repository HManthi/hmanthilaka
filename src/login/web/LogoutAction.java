package login.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import java.util.Map;

public class LogoutAction extends ActionSupport {
	private static Logger LOG = Logger.getLogger(LogoutAction.class);

	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		LOG.info(session.get("username") + " did logout from the system");

		session.remove("username");
		session.remove("role");
		session.remove("user");
		return LOGIN;
	}
}
