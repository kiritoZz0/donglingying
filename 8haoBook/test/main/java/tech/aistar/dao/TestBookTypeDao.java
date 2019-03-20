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
        BookType bookType = new BookType("热卖图书hah");
        bookTypeDao.save(bookType);
    }

}
