package drivermanagement.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import common.util.CommonUtil;
import common.util.DateTimeUtil;
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
		Map session = ActionContext.getContext().getSession();

		LOG.info("session.get(\"userName\") = " + session.get("userName"));
		LOG.info("driverName = " + getServletRequest().getParameter("driverName"));
		LOG.info("address = " + getServletRequest().getParameter("address"));
		LOG.info("contactNo = " + getServletRequest().getParameter("contactNo"));
		LOG.info("licenseNo = " + getServletRequest().getParameter("licenseNo"));
		LOG.info("gender = " + getServletRequest().getParameter("gender"));
		LOG.info("driverType = " + getServletRequest().getParameter("driverType"));
		LOG.info("issueDate = " + getServletRequest().getParameter("issueDate"));
		LOG.info("expireDate = " + getServletRequest().getParameter("expireDate"));

		if (session.get("userName") != null) {
			newDriver.setDriverName(getServletRequest().getParameter("driverName"));
			newDriver.setAddress(getServletRequest().getParameter("address"));
			newDriver.setContactNum(getServletRequest().getParameter("contactNo"));
			newDriver.setLicenseNum(getServletRequest().getParameter("licenseNo"));
			newDriver.setGender(getServletRequest().getParameter("gender"));
			newDriver.setDriverTypeId(Long.valueOf(getServletRequest().getParameter("driverType")));
			newDriver.setIssueDate(DateTimeUtil.parseDate(getServletRequest().getParameter("issueDate"), "MM/dd/yyyy"));
			newDriver.setExpireDate(DateTimeUtil.parseDate(getServletRequest().getParameter("expireDate"), "MM/dd/yyyy"));
			newDriver.setCreatedBy(String.valueOf(session.get("userName")));
			newDriver.setCreatedDatetime(DateTimeUtil.getSystemDate());

			driverManager.addDriver(newDriver);

			setDriverTypes(driverManager.getDriverTypes());
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


	public List getDriverTypes() {
		return driverTypes;
	}

	public void setDriverTypes(List driverTypes) {
		this.driverTypes = driverTypes;
	}
}
