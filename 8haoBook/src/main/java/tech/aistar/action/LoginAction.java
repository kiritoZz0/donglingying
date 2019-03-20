package tech.aistar.action;

import tech.aistar.entity.Member;
import tech.aistar.service.IMemberService;
import tech.aistar.service.impl.MemberServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
@WebServlet(urlPatterns = "/seller/login")
public class LoginAction extends HttpServlet{
    private IMemberService memberService = new MemberServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String name = req.getParameter("sellername");
        String pwd = req.getParameter("sellerpwd");
        Member u = memberService.findByMemname(name);
        if(null!=u)
        {
            if(u.getPassword().equals(pwd)){
                req.getSession().setAttribute("user",u);
                if(u.getIdentify()==0)
                {
                    out.print("0");
                }
            }
            else
            {
                out.print("1");
            }

        }else {
            out.print("2");
        }
    }
 }

