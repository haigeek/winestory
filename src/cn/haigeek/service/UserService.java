package cn.haigeek.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.haigeek.dao.UserDao;
import cn.haigeek.entity.Story;
import cn.haigeek.entity.User;
@Transactional
public class UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	//登录的方法
	public User login(User user) {
		// 调用dao的方法
		
		return userDao.loginUser(user);
	}
	//注册的方法
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.registerUser(user);
//		return null;
	}
	
	public Story findStory(int usid) {
		// TODO Auto-generated method stub
		return userDao.findstory(usid);
	}
	public User findOne(int uid) {
		// TODO Auto-generated method stub
		return userDao.findone(uid);
	}
	public void update(User user) {
		// TODO Auto-generated method stub
		userDao.update(user);
	}
}
