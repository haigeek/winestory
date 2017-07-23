package cn.haigeek.dao;

import cn.haigeek.entity.Story;
import cn.haigeek.entity.User;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	

	//登录的方法
	public User loginUser(User user) {
		// 调用方法得到hibernateTemplate对象
		HibernateTemplate hibernateTemplate=this.getHibernateTemplate();
		//登录的查询操作，根据用户名和密码
		List<User> list=(List<User>) hibernateTemplate.find("from User where username=? and password=?", user.getUsername(),user.getPassword());
		if(list!=null&&list.size()!=0){
			User u=list.get(0);
			return u;
		}
		
		return null;
	}

	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().save(user);
	}

	//获取用户的story
	public Story findstory(int usid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Story.class, usid);
	}

	//根据id查询
	public User findone(int uid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(User.class, uid);
	}

	//修改个人信息
	public void update(User user2) {
		this.getHibernateTemplate().update(user2);
		
	}

	
	

}
