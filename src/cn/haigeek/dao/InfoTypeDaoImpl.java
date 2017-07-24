package cn.haigeek.dao;

import cn.haigeek.entity.InfoType;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by haigeek on 2017/7/24.
 */
public class InfoTypeDaoImpl extends HibernateDaoSupport implements InfoTypeDao {
    @Override
    public List<InfoType> findAll() {
        Session session=this.getHibernateTemplate().getSessionFactory().getCurrentSession();
        String hql="from InfoType";
        Query query = session.createQuery(hql);//执行查询操作
        List <InfoType> InfoTypeList = query.list();
        return InfoTypeList;
    }
}
