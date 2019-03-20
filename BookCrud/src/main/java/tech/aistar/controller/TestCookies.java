package tech.aistar.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * Cookie可以作为session会话跟踪机制
 * http协议 - 无状态的协议 - 本身自己是不能判别多个请求来自于同一个客户端.
 */
@WebServlet(urlPatterns ="/test/cookie")
public class TestCookies extends HttpServlet{

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession ses = req.getSession();

        /**
         *  Cookie是怎么来管理会话的.[session的]
         *
         *  当第一次访问的时候,req.getSession();
         *  就会在服务器端创建一个session空间,然后给每个session空间分配一个
         *  唯一的sessionId,并且通过响应头信息将该sessionId响应给客户端
         *  并且将该sessionId保存在客户端[浏览器] - 用cookie
         *
         *  当下一次发送请求的时候,会将本地的浏览器端存放的cookie中的
         *  sessionId一起取出来之后,然后通过请求的头信息一起发送到server
         *
         */

    }

}
