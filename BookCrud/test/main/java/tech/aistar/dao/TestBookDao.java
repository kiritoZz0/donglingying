package tech.aistar.dao;

import org.junit.Test;
import tech.aistar.dao.impl.BookDaoImpl;
import tech.aistar.entity.Book;
import tech.aistar.entity.BookType;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class TestBookDao {
    private IBookDao bookDao = new BookDaoImpl();

    /**
     * img src="${path}/img/${b.imgUrl}"
     * String bookName, double price, String author, String publisHouse, Date createDate, String imgUrl
     */
    @Test
    public void testSave(){
        //模拟很多的图书的数据
        Book b1 = new Book("西游记a",100.0,"吴承恩","人民出版社",new Date(),"book01.jpg");
        Book b2 = new Book("水浒传a",100.0,"吴承恩","人民出版社",new Date(),"book02.jpg");
        Book b3 = new Book("success传",100.0,"吴承恩","人民出版社",new Date(),"book03.jpg");
        Book b4 = new Book("西游记a",100.0,"吴承恩","人民出版社",new Date(),"book04.jpg");
        Book b5 = new Book("西游记b",100.0,"吴承恩","人民出版社",new Date(),"book05.jpg");
        Book b6 = new Book("西游记a",100.0,"吴承恩","人民出版社",new Date(),"book06.jpg");
        Book b7 = new Book("西游c记a",100.0,"吴承恩","人民出版社",new Date(),"book07.jpg");
        Book b8 = new Book("西游水记a",100.0,"吴承恩","人民出版社",new Date(),"book08.jpg");
        Book b9 = new Book("西游记a",100.0,"吴承恩","人民出版社",new Date(),"book09.jpg");

        //图书类型
        BookType t1 = new BookType();
        t1.setId(1);//设置的id的值,表中一定是有记录的
        b1.setBookType(t1);
        b2.setBookType(t1);
        b3.setBookType(t1);
        b4.setBookType(t1);


        BookType t2 = new BookType();
        t2.setId(2);
        b5.setBookType(t2);
        b6.setBookType(t2);

        BookType t3 = new BookType();
        t3.setId(3);
        b7.setBookType(t3);
        b8.setBookType(t3);
        b9.setBookType(t3);

        //调用保存图书的方法
        bookDao.save(b1);
        bookDao.save(b2);
        bookDao.save(b3);
        bookDao.save(b4);
        bookDao.save(b5);
        bookDao.save(b6);
        bookDao.save(b7);
        bookDao.save(b8);
        bookDao.save(b9);
    }

    @Test
    public void testFindAll(){
        List<Book> books = bookDao.findAll("传");

        for(Book b:books){
            System.out.println(b);
            System.out.println("\t"+b.getBookType());
        }
    }
}
