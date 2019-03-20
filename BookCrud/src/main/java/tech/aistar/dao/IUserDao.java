package tech.aistar.dao;

import tech.aistar.entity.User;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public interface IUserDao {

    /**
     * 保存一个用户
     * @param user
     */
    void save(User user);

    /**
     * 根据用户名进行精确匹配
     * @param username 用户名是唯一的
     * @return 单个user对象
     */
    User findByUserName(String username);
}
