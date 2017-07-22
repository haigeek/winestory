package cn.haigeek.dao;

import cn.haigeek.entity.Comment;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by haigeek on 2017/7/22.
 */
public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {
    @Override
    public void add(Comment comment) {
        this.getHibernateTemplate().save(comment);
    }

    @Override
    public List<Comment> findOne(int storyId) {
        return (List<Comment>) this.getHibernateTemplate().find("from Comment where storyId=?",storyId);
    }
}
