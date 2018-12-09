package usermanagement.service;

import common.util.DateTimeUtil;
import usermanagement.dao.UserDao;
import usermanagement.dao.UserDaoHibernate;
import usermanagement.domain.User;

public class UserManagerImpl implements UserManager {
	private UserDao userDao = new UserDaoHibernate();
	@Override
	public void addAppUser(User user) {
		userDao.addOrUpdateUser(user);
//		user.setCreatedDatetime(DateTimeUtil.getSystemDate());
//		user.setCreatedBy();
	}
}
