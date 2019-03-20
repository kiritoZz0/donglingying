package tech.aistar.service.impl;

import tech.aistar.dao.IShopCarDao;
import tech.aistar.dao.impl.ShopCarDaoImpl;
import tech.aistar.entity.ShopCar;
import tech.aistar.service.IShopCarService;

import java.util.List;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
public class ShopCarServiceImpl implements IShopCarService {
    private IShopCarDao shopCarDao = new ShopCarDaoImpl();
    @Override
    public void incar(ShopCar shopCar) {
        shopCarDao.incar(shopCar);
    }

    @Override
    public void deletefromcar(Integer id) {
        shopCarDao.deletefromcar(id);

    }

    @Override
    public Boolean updatebook(Integer id) {
        if (shopCarDao.updatebook(id))
            return true;
        return false;


    }

    @Override
    public List<ShopCar> findcar() {
        return  shopCarDao.findcar();
    }
}
