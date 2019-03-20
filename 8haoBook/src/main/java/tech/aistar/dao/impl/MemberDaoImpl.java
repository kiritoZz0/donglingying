package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import tech.aistar.dao.IMemberDao;
import tech.aistar.entity.Member;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.ISessionCallBack;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class MemberDaoImpl implements IMemberDao {

    @Override
    public void save(Member member) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(member);
                return null;
            }
        });

    }

    @Override
    public Member findByMemname(String memname) {
          return (Member)HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                String hql ="from Member where memname =:uname";
                Query query = session.createQuery(hql);
                query.setParameter("uname",memname);
                return query.uniqueResult();
            }
        });

    }
}
