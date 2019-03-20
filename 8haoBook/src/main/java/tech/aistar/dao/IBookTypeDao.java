package tech.aistar.dao;

import tech.aistar.entity.BookType;

import java.util.List;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public interface IBookTypeDao {

    /**
     * 保存一个图书类型
     * @param bookType
     */
    void save(BookType bookType);

    /**
     * 查询所有的图书类型
     * @return
     */
    List<BookType> findAll();

}
