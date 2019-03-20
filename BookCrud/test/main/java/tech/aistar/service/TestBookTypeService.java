package tech.aistar.service;

import org.junit.Test;
import tech.aistar.entity.BookType;
import tech.aistar.service.impl.BookTypeServiceImpl;

import java.util.Iterator;
import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class TestBookTypeService {
    private IBookTypeService bookTypeService = new BookTypeServiceImpl();

    @Test
    public void testFindAll(){
        List<BookType> bookTypeList = bookTypeService.findAll();

        //JDK8.0提供的,性能最高的 编程之美
        bookTypeList.forEach(System.out::println);

        //foreach - f增强for循环 - 只读的.不能进行增删改的操作
        for(BookType b:bookTypeList){
            System.out.println(b);
        }
        System.out.println("=========");
        int len = bookTypeList.size();
        for(int i = 0;i< len;i++){
            System.out.println(bookTypeList.get(i));
        }
        System.out.println("====集合迭代器==");
        Iterator<BookType> iter = bookTypeList.iterator();//为了提高性能
        while(iter.hasNext()){
            System.out.println(iter.next());
        }
    }
}
