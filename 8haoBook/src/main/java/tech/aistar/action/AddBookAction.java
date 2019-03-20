package tech.aistar.action;

import tech.aistar.service.IShopCarService;
import tech.aistar.service.impl.ShopCarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
@WebServlet(urlPatterns = "/shopcar/add")
public class AddBookAction extends HttpServlet {
    private IShopCarService shopCarService = new ShopCarServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String bookid = req.getParameter("id");
      Integer i = Integer.valueOf(bookid);
        System.out.println("=========="+bookid+"===========");
       if( shopCarService.updatebook(i))
           out.print(0);
       else
           out.print(1);

    }
}
