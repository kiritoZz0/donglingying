package tech.aistar.service;

import org.junit.Test;
import tech.aistar.entity.Book;
import tech.aistar.service.impl.BookServiceImpl;

import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class TestBookService {

    @Test
    public  void testfindall()
    {
        IBookService bookService = new BookServiceImpl();
       List<Book>books= bookService.findAllBook();
        books.forEach(System.out::println);
    }
}
