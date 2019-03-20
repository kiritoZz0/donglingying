package tech.aistar.service;

import tech.aistar.entity.BookType;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public interface IBookTypeService {
    /**
     * 查询所有的图书类型
     * @return
     */
    List<BookType> findAll();
}
