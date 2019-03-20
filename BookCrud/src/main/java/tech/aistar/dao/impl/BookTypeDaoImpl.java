package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import tech.aistar.dao.IBookTypeDao;
import tech.aistar.entity.BookType;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.HibernateUtil;
import tech.aistar.util.ISessionCallBack;

import java.util.List;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class BookTypeDaoImpl implements IBookTypeDao{


//    @Override
//    public void save(BookType bookType) {
//        //hibernate编程步骤
//        //1. 获取session = Connection + Cache[一级缓存]
//        Session session = null;
//        Transaction tx = null;
//
//        //ctrl + alt + t
//        try {
//            session = HibernateUtil.getSession();
//
//            //2.开始事务
//            tx = session.beginTransaction();
//
//            //3. 执行CRUD操作
//            session.save(bookType);
//
//            //4. 提交事务
//            tx.commit();
//        } catch (HibernateException e) {
//            //回滚操作...
//            if(null!=tx){
//                //事务的回滚操作...
//                tx.rollback();
//            }
//            e.printStackTrace();//会将错误信息写入到日志文件中....
//        }finally {
//            if(null != session){
//                //5. 关闭session
//                session.close();//释放资源
//            }
//        }
//    }

    @Override
    public void save(BookType bookType) {
        //推荐是用匿名内部类
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(bookType);
                return null;
            }
        });
    }

    @Override
    public List<BookType> findAll() {
        return (List<BookType>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                return session.createQuery("from BookType").list();
            }
        });
    }
/*
    @Override
    public List<BookType> findAll() {
        Session session = null;
        List<BookType> bookTypes = null;
        Transaction tx = null;
        try {
            //hibernate编程步骤
            //1. 获取session = Connection + Cache[一级缓存]
            session = HibernateUtil.getSession();

            //2.开始事务
            tx = session.beginTransaction();

            //3. 执行CRUD操作
            //session.save(bookType);

            //定义一个hql语句
            String hql = "from BookType";//面向的是对象的查询语句
            //String sql = "select * from book_type";//sql语句

            //获取   Query查询语句对象
            Query query = session.createQuery(hql);

            bookTypes = query.list();

            //4. 提交事务
            tx.commit();
        } catch (Exception e) {
            if(null!=tx){
                tx.rollback();
            }
            e.printStackTrace();
        }finally {
            if(null!=session){
                session.close();
            }
        }
        return bookTypes;
    }*/
}
