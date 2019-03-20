package tech.aistar.action;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
@WebServlet(urlPatterns = "/user/exit")
public class UserExit extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //清空session
        req.getSession().invalidate();

        // 重定向到首页
        resp.sendRedirect("/BookCrud/index/list");
    }
}

