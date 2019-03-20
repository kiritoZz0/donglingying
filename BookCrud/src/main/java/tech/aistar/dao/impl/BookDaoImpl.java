package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import tech.aistar.dao.IBookDao;
import tech.aistar.entity.Book;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.ISessionCallBack;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class BookDaoImpl implements IBookDao{
    @Override
    public void save(Book book) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(book);
                return null;
            }
        });
    }

    @Override
    public List<Book> findAll(String bookName) {
        return (List<Book>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                //进行判断
                if(null == bookName || bookName.trim().length()==0){
                    return session.createQuery("from Book").list();
                }


                return session.createQuery("from Book where bookName like ?").setParameter(0,"%"+bookName+"%").list();
            }
        });
    }
}
