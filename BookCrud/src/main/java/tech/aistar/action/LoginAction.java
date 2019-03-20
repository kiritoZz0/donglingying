package tech.aistar.action;

import tech.aistar.entity.User;
import tech.aistar.service.IUserService;
import tech.aistar.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2019/1/21 0021.
 */
@WebServlet("/user/login")
public class LoginAction extends HttpServlet{

    //控制层调用service层...
    //private IUserDao userDao = new UserDaoImpl();
    private IUserService userService = new UserServiceImpl();

    /**
     * HttpServletRequest - 所有的请求的信息全部封装在这个对象.
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        //获取参数
        String uname = req.getParameter("username");

        //表单中的password
        String pwd = req.getParameter("password");

        //调用service层中的根据用户名查询用户
        User u = userService.findByUserName(uname);

        //判断用户是否为空
        if(null != u){
            //进一步判断密码是否有效的.
            if(u.getPassword().equals(pwd)){
          // if(pwd.equals(u.getPassword())){     //成功...

                //接触过两个作用域 - request作用 - 一次请求,一次响应.
                //application作用域 - 容器开启 - 容器关闭
                //原则 - 优先从小的作用域开始
                //session作用域 - 一次会话[当前浏览器开始 - 当前浏览器关闭]
                req.getSession().setAttribute("user",u);

                out.print("2");
            }else{
                //密码错误的..
                out.print("1");
            }
        }else{
            //用户不存在...
            out.print("0");
        }
    }
}
