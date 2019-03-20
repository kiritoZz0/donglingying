package tech.aistar.service.impl;

import tech.aistar.dao.IBookDao;
import tech.aistar.dao.impl.BookDaoImpl;
import tech.aistar.entity.Book;
import tech.aistar.service.IBookService;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class BookServiceImpl implements IBookService{
    private IBookDao bookDao = new BookDaoImpl();

    @Override
    public List<Book> findAll(String bookName) {
        return bookDao.findAll(bookName);
    }
}
