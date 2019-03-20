package tech.aistar.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public interface ISessionCallBack {

    Object executeCrud(Session session) throws HibernateException;
}
