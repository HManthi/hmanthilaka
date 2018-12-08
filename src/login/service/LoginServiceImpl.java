package login.service;

import login.dao.LoginDao;
import login.dao.LoginDaoHibernate;
import usermanagement.domain.User;

public class LoginServiceImpl implements LoginService {
	@Override
	public User authenticateUser(User user) {
		LoginDao loginDao = new LoginDaoHibernate();

		User loggedUser = loginDao.authenticateUser(user);

		if (loggedUser != null) {
			String username = loggedUser.getUserName();
			String password = loggedUser.getPassword();
			Long roleId = loggedUser.getRoleId();

			return new User(username, password, roleId);
		} else {
			return null;
		}
	}
}
