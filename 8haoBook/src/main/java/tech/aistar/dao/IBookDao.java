package tech.aistar.dao;

import tech.aistar.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public interface IBookDao {
    void save(Book book);
    List<Book> findByBookname(String bookname);
    List<Book> findAllBook();
    void deletebook(Integer id);


}
