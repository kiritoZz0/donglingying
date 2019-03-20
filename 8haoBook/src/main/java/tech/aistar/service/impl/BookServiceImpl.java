package tech.aistar.service.impl;

import tech.aistar.dao.IBookDao;
import tech.aistar.dao.IMemberDao;
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
    public void save(Book book) {
        bookDao.save(book);
    }

    @Override
    public List<Book> findByBookname(String bookname) {

       List<Book> b = bookDao.findByBookname(bookname);
        return b;
    }

    @Override
    public List<Book> findAllBook() {
        List<Book> b = bookDao.findAllBook();
        return b;
    }

    @Override
    public void deletebook(Integer id) {
        bookDao.deletebook(id);
    }
}
