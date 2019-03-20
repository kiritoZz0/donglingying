package tech.aistar.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import tech.aistar.dao.IShopCarDao;
import tech.aistar.entity.Book;
import tech.aistar.entity.ShopCar;
import tech.aistar.util.HibernateTemplates;
import tech.aistar.util.ISessionCallBack;

import java.util.List;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
public class ShopCarDaoImpl implements IShopCarDao {
    @Override
    public void incar(ShopCar shopCar) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(shopCar);
                return null;
            }
        });
    }

    @Override
    public void deletefromcar(Integer id) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {

                session.createQuery("delete from ShopCar where id =?").setParameter(0,id).executeUpdate();
                return null;
            }
        });

    }

    @Override
    public Boolean updatebook(Integer id) {
     ShopCar shopCar =new ShopCar(1,0);
        Book b = new Book();
        b.setId(id);
        shopCar.setBookid(b);

        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                session.save(shopCar);
                return true;
            }
        });
         return false;
    }

    @Override
    public ShopCar findbook(Integer id) {

        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
               return null;
            }
        });
        return null;
    }

    @Override
    public List<ShopCar> findcar() {
      return (List<ShopCar>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeCrud(Session session) throws HibernateException {
                return session.createQuery("from ShopCar ").list();
            }
        });
    }
}
