package tech.aistar.action;

import tech.aistar.entity.Book;
import tech.aistar.service.IBookService;
import tech.aistar.service.impl.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.*;
import java.util.List;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
@WebServlet(urlPatterns = "/seller/list")
public class SellerAction extends HttpServlet{
    private IBookService bookService = new BookServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        List<Book> books = bookService.findAllBook();
        req.setAttribute("booksList",books);
        req.getRequestDispatcher("/jsp/seller_serve.jsp").forward(req,resp);

    }
}
