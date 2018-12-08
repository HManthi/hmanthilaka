package common.domain;

import usermanagement.domain.User;

public class Admin extends User {
	public Admin() {}

	public Admin(String username, String password) {
		super(username, password);
	}

	public Admin(String username, String password, String name) {
		super(username, password, name);
	}
}
