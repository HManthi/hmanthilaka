package usermanagement.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	private Long userId;
    private String userName;
    private String password;
    private Long roleId;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private Date birthday;
    private Long departmentId;
    private Long branchId;

	private String role;
    
    public User(String userName, String password, Long roleId, String firstName, String lastName, String email,
			String phone, Date birthday, Long departmentId, Long branchId) {
		super();
		this.userName = userName;
		this.password = password;
		this.roleId = roleId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.birthday = birthday;
		this.departmentId = departmentId;
		this.branchId = branchId;
	}

	public User() {
	}

	public User(String userName, String password, Long roleId) {
		this.userName = userName;
		this.password = password;
		this.roleId = roleId;
	}

	public User(String userName, String password, String name) {
		this.userName = userName;
		this.password = password;
		this.firstName = name;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	} 
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getPassword() {
        return password;
    }
 
	public void setPassword(String password) {
        this.password = password;
    }
	
    public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
    
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getPhone() {
        return phone;
    }
 
    public void setPhone(String phone) {
        this.phone = phone;
    }

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}

	public Long getBranchId() {
		return branchId;
	}

	public void setBranchId(Long branchId) {
		this.branchId = branchId;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
