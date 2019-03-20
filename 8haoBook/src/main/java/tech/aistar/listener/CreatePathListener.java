package tech.aistar.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by Administrator on 2019/1/21 0021.
 */
@WebListener
public class CreatePathListener implements ServletContextListener {


    /**
     * 当容器启动的时候,自动执行...
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //获取ServletContext对象
        ServletContext context = sce.getServletContext();
        //放入到application作用域 - 从服务器开始 - 服务器关闭
        //获取项目的上下文路径
        String path = context.getContextPath();
        context.setAttribute("path",path);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
