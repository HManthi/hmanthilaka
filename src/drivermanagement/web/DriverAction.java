package drivermanagement.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import drivermanagement.domain.Driver;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import drivermanagement.service.DriverManager;
import drivermanagement.service.DriverManagerImpl;

import javax.servlet.http.HttpServletRequest;
import java.applet.AppletContext;
import java.util.List;
import java.util.Map;

public class DriverAction extends ActionSupport implements ServletRequestAware, ModelDriven {
	private Logger LOG = Logger.getLogger(DriverAction.class);

	private DriverManager driverManager = new DriverManagerImpl();
	private Driver newDriver = new Driver();
	private HttpServletRequest request;
	private List driverList;

	@Override
	public Object getModel() {
		return driverManager;
	}

	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		this.request = httpServletRequest;
	}

	public HttpServletRequest getServletRequest() {
		return this.request;
	}

	public List getDriverList() {
		return driverList;
	}

	public void setDriverList(List driverList) {
		this.driverList = driverList;
	}

	public String execute() {
		Map session = ActionContext.getContext().getSession();

		if (session.get("userName") != null) {
			return SUCCESS;
		}
		return LOGIN;
	}

//	public String driverFetch() {
//		LOG.info("calling fetch driver method..");
//		Map session = ActionContext.getContext().getSession();
//
//		if (session.get("userName") != null) {
//			driverList = driverManager.fetchDrivers();
//
//			return SUCCESS;
//		}
//		return LOGIN;
//	}
}
