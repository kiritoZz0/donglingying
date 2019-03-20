package tech.aistar.service;

import tech.aistar.entity.ShopCar;

import java.util.List;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
public interface IShopCarService {
    void incar(ShopCar shopCar);
    void deletefromcar(Integer id);
    Boolean  updatebook(Integer id);
    List<ShopCar> findcar();

}
