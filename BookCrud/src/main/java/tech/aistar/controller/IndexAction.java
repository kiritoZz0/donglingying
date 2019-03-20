package tech.aistar.controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 转发和重定向 - 作用域
 * http://localhost:8888/BookCrud/index
 */
@WebServlet(urlPatterns = "/index")
public class IndexAction extends HttpServlet{

    /**
     * HttpServletRequest - 所有的请求的信息都被封装在这个对象中了.
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //后台的数据 -> 传输到页面上[jsp技术 - 放弃]

        //定义一个字符串
        String uname = "success";

        //将该数据放入到request作用域中
        req.setAttribute("user",uname);

        //重定向
        //resp.sendRedirect("/BookCrud/test/index.jsp");

        //转发
        req.getRequestDispatcher("test/index.jsp").forward(req,resp);

    }
}
