package tech.aistar.dao;

import org.junit.Test;
import tech.aistar.dao.impl.BookTypeDaoImpl;
import tech.aistar.entity.BookType;

import java.util.List;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class TestBookTypeDao {

    private IBookTypeDao bookTypeDao = new BookTypeDaoImpl();

    @Test
    public void testSave(){
        //模拟一条图书类型的数据...
        BookType bookType1 = new BookType("特惠图书");
        BookType bookType2 = new BookType("秒杀图书");
        BookType bookType3 = new BookType("新书推荐");
        bookTypeDao.save(bookType1);
        bookTypeDao.save(bookType2);
        bookTypeDao.save(bookType3);
    }

    @Test
    public void testFindAll(){
        List<BookType> bookTypeList = bookTypeDao.findAll();
        if(null!=bookTypeList && bookTypeList.size()>0){
            for(BookType b:bookTypeList){
                System.out.println(b);
            }
        }
    }

}
