package tech.aistar.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

/**
 *写一个类去实现Servlet接口
 * 当某个普通类[非抽象类]去实现某个接口的时候,强制要求实现该接口中的所有的方法
 *
 * alt+enter - 快捷键
 */
@WebServlet(urlPatterns = "/hello")
public class FirstServlet implements Servlet{


    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("init...");
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("service...");
    }

    @Override
    public void destroy() {
        System.out.println("destroy...");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public String getServletInfo() {
        return null;
    }
}
