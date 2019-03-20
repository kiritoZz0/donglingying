package tech.aistar.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class HibernateTemplates {

    //面向父类编程之 - 方法的返回类型可以写成父类
    //java.lang.Object属于根类.
    public static Object execute(ISessionCallBack callBack){//面向接口编程 - 方法的参数可以定义成接口 - 传入该接口的具体的实现类.
        Session session = null;
        Transaction tx = null;
        Object obj = null;

        try{
            //1.获取session
            session = HibernateUtil.getSession();
            //2.打开事务
            tx = session.beginTransaction();

            //3.具体的CRUD操作 - 不同的部分...
            //TODO ...
            obj = callBack.executeCrud(session);

            //4.提交事务
            tx.commit();

        }catch(HibernateException e){
            if(null!=tx){
                //回滚事务
                tx.rollback();
            }
            //输出异常信息
            e.printStackTrace();
        }finally{
            //关闭session,释放资源
            if(null!=session){
                session.close();
            }
        }
        return obj;
    }
}
