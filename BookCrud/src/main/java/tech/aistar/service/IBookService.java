package tech.aistar.service;

import tech.aistar.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public interface IBookService {

    /**
     * 查询所有的图书信息...
     * @return
     */
    List<Book> findAll(String bookName);
}
