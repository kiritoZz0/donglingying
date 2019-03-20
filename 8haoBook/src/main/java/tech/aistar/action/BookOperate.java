package tech.aistar.action;

import tech.aistar.service.IBookService;
import tech.aistar.service.impl.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
@WebServlet(urlPatterns = "/book/operate")
public class BookOperate extends HttpServlet {
    private IBookService bookService = new BookServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Integer i = Integer.valueOf(id);
        bookService.deletebook(i);
        resp.sendRedirect("/8haoBook/seller/list");
    }
}
