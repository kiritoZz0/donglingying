<%--
属于jsp的指令 - 三个指令page指令
<%@ 指令名称 属性="属性值" %>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--talib指令 - 引入jsp标签的指令c fmt->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--导航begin-->
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">精英团队</a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <c:if test="${sessionScope.user == null}">
                            <li class="active">
                                <a href="#" data-toggle="modal" data-target="#myModal">
                                    </span>登录</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <li>
                                <a href="#">${user.username}</a>
                            </li>
                            <li>
                                <a href="${path}/user/exit">安全退出</a>
                            </li>
                        </c:if>

                        <li>
                            <a href="#">注册</a>
                        </li>

                        <li>
                            <a href="#">首页</a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                个人中心 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">修改密码</a>
                                </li>
                                <li>
                                    <a href="#">EJB</a>
                                </li>
                                <li>
                                    <a href="#">Jasper Report</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">分离的链接</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">另一个分离的链接</a>
                                </li>
                            </ul>
                        </li>
                        <li><img src="${path}/img/girls.png" style="width: 50px;height: 50px;border-radius: 50%;"></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<!--导航end-->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button id="btn_close" type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    用户登录入口
                </h4>
            </div>
            <div class="modal-body">
                <!--form表单位置-->
                <form id="loginForm" class="form-horizontal" role="form">
                    <div class="form-group has-feedback">
                        <label for="username" class="col-sm-2 control-label">名字</label>
                        <div class="col-md-6">
                            <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            <input type="text" class="form-control" name="username" id="username" placeholder="请输入名字">
                            <label class="label label-danger unameLab" id="unameLab">用户不存在</label>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="password" class="col-sm-2 control-label">密码</label>
                        <div class="col-md-6">
                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码">
                            <label class="label label-danger pwdLab" id="pwdLab">密码不正确</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">请记住我
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <!--普通按钮-->
                            <button type="button" onclick="myLogin()" class="btn btn-default">登录</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
</div>