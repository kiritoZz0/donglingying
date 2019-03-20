package tech.aistar.service;

import tech.aistar.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public interface IBookService {
    void save(Book book);
    List<Book> findByBookname(String bookname);
    List<Book> findAllBook();
    void deletebook(Integer id);
}
