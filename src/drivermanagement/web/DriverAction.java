package drivermanagement.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import drivermanagement.domain.Driver;
import drivermanagement.domain.DriverType;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import drivermanagement.service.DriverManager;
import drivermanagement.service.DriverManagerImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class DriverAction extends ActionSupport implements ServletRequestAware, ModelDriven {
	private Logger LOG = Logger.getLogger(DriverAction.class);

	private DriverManager driverManager = new DriverManagerImpl();
	private Driver newDriver = new Driver();
	private HttpServletRequest request;
	private List driverList;
	private List<DriverType> driverTypes;

	public DriverAction() {
		setDriverTypes(driverManager.getDriverTypes());
	}

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

	public String driverAdd() {
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


	public List getDriverTypes() {
		return driverTypes;
	}

	public void setDriverTypes(List driverTypes) {
		this.driverTypes = driverTypes;
	}
}
