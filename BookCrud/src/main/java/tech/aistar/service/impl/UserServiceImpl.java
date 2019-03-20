package tech.aistar.service.impl;

import tech.aistar.dao.IUserDao;
import tech.aistar.dao.impl.UserDaoImpl;
import tech.aistar.entity.User;
import tech.aistar.service.IUserService;

/**
 * 业务逻辑层 - service层...只负责处理数据,不负责到数据库中取数据[Dao]
 */
public class UserServiceImpl implements IUserService{
    //service层调用dao层[持久层 - 和数据库进行直接的交互]
    private IUserDao userDao = new UserDaoImpl();

    @Override
    public void save(User user) {
        //在保存之前,进行数据的验证...
//        String uname = user.getUsername();
//
//        if(uname != null ){
//
//        }else{
//
//        }

        userDao.save(user);
    }

    @Override
    public User findByUserName(String username) {
        User u = userDao.findByUserName(username);
        //可能对这个user对象进行进一步操作...
        //通过java代码实现的...
        return u;
    }
}
