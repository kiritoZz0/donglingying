package tech.aistar.service.impl;

import tech.aistar.dao.IBookTypeDao;
import tech.aistar.dao.impl.BookTypeDaoImpl;
import tech.aistar.entity.BookType;
import tech.aistar.service.IBookTypeService;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class BookTypeServiceImpl implements IBookTypeService{
    private IBookTypeDao bookTypeDao = new BookTypeDaoImpl();

    @Override
    public List<BookType> findAll() {
        return bookTypeDao.findAll();
    }
}
