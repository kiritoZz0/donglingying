package tech.aistar.action;

import tech.aistar.entity.Book;
import tech.aistar.entity.ShopCar;
import tech.aistar.service.IBookService;
import tech.aistar.service.IShopCarService;
import tech.aistar.service.impl.BookServiceImpl;
import tech.aistar.service.impl.ShopCarServiceImpl;

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
public class IndexAction extends HttpServlet {
    private IBookService bookService = new BookServiceImpl();
    private IShopCarService shopCarService = new ShopCarServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理中文请求的乱码问题
        req.setCharacterEncoding("utf-8");
        //获取后台的数据...

       // req.setAttribute("booksList",books);
        String bookName = req.getParameter("bookName");
        System.out.println(bookName);
        req.setAttribute("bname",bookName == null?"":bookName);
        List<Book> books = bookService.findByBookname(bookName);
        req.setAttribute("booksList",books);



        //放入到作用域中...

        req.getRequestDispatcher("/jsp/homepage.jsp").forward(req,resp);

    }
}
