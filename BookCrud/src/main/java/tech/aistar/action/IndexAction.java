package tech.aistar.action;

import tech.aistar.entity.Book;
import tech.aistar.entity.BookType;
import tech.aistar.service.IBookService;
import tech.aistar.service.IBookTypeService;
import tech.aistar.service.impl.BookServiceImpl;
import tech.aistar.service.impl.BookTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2019/1/21 0021.
 */
@WebServlet(urlPatterns = "/index/list")
public class IndexAction extends HttpServlet{
    private IBookTypeService bookTypeService = new BookTypeServiceImpl();

    private IBookService bookService = new BookServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //处理中文请求的乱码问题
        req.setCharacterEncoding("utf-8");

        //获取后台的数据...
        //获取图书类型的所有的数据
        List<BookType> bookTypeList = bookTypeService.findAll();
        //放入到request作用域
        req.setAttribute("bookTypeList",bookTypeList);

        //接受查询的参数
        String bookName = req.getParameter("bookName");

        req.setAttribute("bname",bookName == null?"":bookName);

        //获取所有的图书的数据
        List<Book> books = bookService.findAll(bookName);
        req.setAttribute("booksList",books);

        //放入到作用域中...

        req.getRequestDispatcher("/jsp/index.jsp").forward(req,resp);
    }
}
