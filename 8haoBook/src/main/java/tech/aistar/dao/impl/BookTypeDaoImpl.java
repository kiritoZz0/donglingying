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
    @Override
    public void save(BookType bookType) {
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

        //hibernate编程步骤
        //1. 获取session = Connection + Cache[一级缓存]
        Session session = HibernateUtil.getSession();

        //2.开始事务
        Transaction tx = session.beginTransaction();

        //3. 执行CRUD操作
        //session.save(bookType);

        //定义一个hql语句
        String hql = "from BookType";//面向的是对象的查询语句
        //String sql = "select * from book_type";//sql语句

        //获取   Query查询语句对象
        Query query = session.createQuery(hql);

        List<BookType> bookTypes = query.list();

        //4. 提交事务
        tx.commit();

        //5. 关闭session
        session.close();//释放资源

        return bookTypes;
    }
}
