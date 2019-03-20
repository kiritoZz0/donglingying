package tech.aistar.dao;

import org.junit.Test;
import tech.aistar.dao.impl.BookDaoImpl;
import tech.aistar.entity.Book;

import java.util.Date;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class TestBookDao {
    private IBookDao bookDao = new BookDaoImpl();

    @Test
    public void testsave(){
        Book b1 =new Book("人间失格",15.00,1500,2,new Date(),"/img/book1.JPG");
        Book b2 =new Book("感官品牌：隐藏在购买背后的感官秘密（珍藏版）",39.90,320,3,new Date(),"/img/book03.jpg");
        Book b3 =new Book("追光之路 用心解读风光摄影",45.00,1600,4,new Date(),"/img/book01.jpg");
        Book b4 =new Book("非洲归来 不必远方",12.20,960,5,new Date(),"/img/book02.jpg");
         bookDao.save(b1);
        bookDao.save(b2);
        bookDao.save(b3);
        bookDao.save(b4);
    }
}
