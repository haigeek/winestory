package cn.haigeek.dao;

import java.util.List;

import cn.haigeek.entity.Comment;
import cn.haigeek.entity.User;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.haigeek.entity.Story;
import cn.haigeek.entity.pageShow;

import static javafx.scene.input.KeyCode.L;

public class StoryDaoImpl extends HibernateDaoSupport implements StoryDao {

	//发布文章的功能
	public void add(Story story) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(story);
	}

	//首页显示文章
	public List<Story> findindex() {
		// TODO Auto-generated method stub
		
		return (List<Story>) this.getHibernateTemplate().find("from Story");
	}

	//根据id查询
	public Story findOne(int story_id) {
		
		return this.getHibernateTemplate().get(Story.class, story_id);
	}

	//根据用户id查询story
	public List<Story> findStory(int usid) {
		// TODO Auto-generated method stub
		return (List<Story>) this.getHibernateTemplate().find("from Story where usid=?", usid);
	}


    public int findStorySize() {
        Session session=getSessionFactory().openSession();
        String hql = "from Story ";
        int size = session.createQuery(hql).list().size();
        session.close();
        return size;
    }


    public List<Story> getAllStory(int pageNow, int pageSize) {
        Session session=this.getHibernateTemplate().getSessionFactory().getCurrentSession();
        String hql="from Story order by story_id desc ";
        Query query = session.createQuery(hql);//执行查询操作
        query.setFirstResult((pageNow - 1) * pageSize);
        query.setMaxResults(pageSize);
        List <Story> StoryList = query.list();
        return StoryList;

    }



}
