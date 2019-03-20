package tech.aistar.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *  JVM中的类加载器 - 将类加载进JVM内存的活动过程.
 */
public class HibernateUtil {
    //充当的角色"数据源的工程" - 一个数据库只对应一个"工厂",重量级的,创建和销毁的成本比较"昂贵".
    //负责创建Session - [一次会话,和数据库的一次连接]
    //为什么使用static关键字 - 为了保证内存中的实例永远只有一个
    private static SessionFactory factory;

    //静态代码块
    //1. 类进JVM内存的时候,会优先执行静态代码块中的代码
    //2. 并且仅仅执行一次
    //可以进行一些初始化的配置操作[读取]
    static{
        //默认会到src/main/resources下去寻找名称为hibernate.cfg.xml的配置文件.
        Configuration cfg = new Configuration().configure();

        StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                                                .applySettings(cfg.getProperties())
                                                .build();

        factory = cfg.buildSessionFactory(registry);
    }

    /**
     * 获取Session对象...
     */
    public static Session getSession(){
        return null == factory ? null : factory.openSession();
    }
}
