package login.service;

import usermanagement.domain.User;

public interface LoginService {
	User authenticateUser(User user);
}
