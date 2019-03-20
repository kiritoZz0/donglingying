package tech.aistar.dao;

import tech.aistar.entity.ShopCar;

import java.util.List;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
public interface IShopCarDao {
    void incar(ShopCar shopCar);
    void deletefromcar(Integer id);
    Boolean  updatebook(Integer id);
    ShopCar  findbook(Integer id);
    List<ShopCar> findcar();
}
