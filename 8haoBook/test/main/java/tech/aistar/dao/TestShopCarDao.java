package tech.aistar.dao;

import org.junit.Test;
import tech.aistar.dao.impl.ShopCarDaoImpl;
import tech.aistar.entity.Book;
import tech.aistar.entity.ShopCar;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
public class TestShopCarDao {
    private IShopCarDao shopCarDao = new ShopCarDaoImpl();

    @Test
    public void testincar() {
        ShopCar shopCar = new ShopCar(1, 0);
        Book b = new Book();
        b.setId(5);
        shopCar.setBookid(b);
        shopCarDao.incar(shopCar);
    }

    @Test
    public void find() {
        List<ShopCar> shopCars = shopCarDao.findcar();
        for (ShopCar b : shopCars) {
            System.out.println(b);
            System.out.println(b.getBookid().getBookname());
        }
    }
}
