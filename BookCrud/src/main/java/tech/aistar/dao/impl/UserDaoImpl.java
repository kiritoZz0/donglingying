package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import tech.aistar.dao.IUserDao;
import tech.aistar.entity.User;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.ISessionCallBack;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class UserDaoImpl implements IUserDao{

    @Override
    public void save(User user) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(user);
                return null;
            }
        });
    }

    @Override
    public User findByUserName(String username) {
        //alt + enter Object->User 父类->子类
        return (User) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {

                //select * from tbl_user where username = 'tom';
               // String hql = "from User where username = ?";//?是一个占位符
                //创建Query接口对象
               // Query query = session.createQuery(hql);
                //发送参数...
              //  query.setParameter(0,username);

                String hql = "from User where username =:uname";
                Query query = session.createQuery(hql);
                query.setParameter("uname",username);

                return query.uniqueResult();//返回的是单个对象.
            }
        });
    }
}
