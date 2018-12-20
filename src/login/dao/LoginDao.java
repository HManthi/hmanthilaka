package login.dao;

import usermanagement.domain.User;

public interface LoginDao {
	User authenticateUser(User user);
}
