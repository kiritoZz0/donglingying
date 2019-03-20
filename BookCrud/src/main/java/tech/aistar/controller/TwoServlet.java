package tech.aistar.controller;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;

/**
 * 支持通用协议的servlet
 * 复习OO
 *
 *  1. 当某个类是实现一个接口的时候,需要实现该接口中的全部方法.
 *  2. 只有抽象类才有资格定义抽象的方法.
 *  3. 如果一个抽象类实现了一个接口,也是需要实现该接口中的所有的方法
 *     或者不想实现某个方法的时候,需要将该方法定义成抽象的abstract
 *  4. TwoServlet继承 GenericServlet[抽象类] - 发现里面存在一个没有实现的抽象方法
 *     "父债子还" - 必须要实现service[重写service方法].
 *
 * Servlet[I] - 提供给了5个方法[抽象的方法]
 *
 * GenericServlet[父] - 实现了Servlet[I]
 * TwoServlet
 *
 */
public class TwoServlet extends GenericServlet{
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

    }
}
