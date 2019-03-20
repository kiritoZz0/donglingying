package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import tech.aistar.dao.IBookDao;
import tech.aistar.entity.Book;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.ISessionCallBack;

import java.util.List;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class BookDaoImpl  implements IBookDao{

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
    public List<Book> findByBookname(String bookname) {
        return (List<Book>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                if(null == bookname || bookname.trim().length()==0){
                    return session.createQuery("from Book").list();
                }
                return session.createQuery("from Book where bookname like ?").setParameter(0,"%"+bookname+"%").list();
            }
        });
    }

    @Override
    public List<Book> findAllBook() {
       return (List<Book>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                return session.createQuery("from Book").list();
            }
        });

    }

    @Override
    public void deletebook(Integer id) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {

                session.createQuery("delete from Book where id =?").setParameter(0,id).executeUpdate();
                return null;
            }
        });
    }
}
