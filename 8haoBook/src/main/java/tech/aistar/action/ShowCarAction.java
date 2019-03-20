package tech.aistar.action;

import tech.aistar.entity.Book;
import tech.aistar.entity.ShopCar;
import tech.aistar.service.IShopCarService;
import tech.aistar.service.impl.ShopCarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
@WebServlet(urlPatterns = "/shopcar")
public class ShowCarAction extends HttpServlet {
    private IShopCarService shopCarService = new ShopCarServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        List<ShopCar> books = shopCarService.findcar();
        req.setAttribute("booksList",books);
        req.getRequestDispatcher("/jsp/ShopCar.jsp").forward(req,resp);


    }
}
