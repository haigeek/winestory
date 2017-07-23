package cn.haigeek.dao;

import cn.haigeek.entity.Story;
import cn.haigeek.entity.User;

public interface UserDao {

	User loginUser(User user);

	void registerUser(User user);

	Story findstory(int usid);

	User findone(int uid);

	void update(User user2);

	
	
}
