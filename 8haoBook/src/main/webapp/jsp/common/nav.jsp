<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/23 0023
  Time: 下午 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--talib指令 - 引入jsp标签的指令c fmt->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--导航begin-->
<div class="myLink">

    <div class=" container-fluid ">
        <div class="row">
            <nav class="navbar navbar-default" role="navigation" style="background-color: rgb(227, 228, 229)">
                <div class="container-fluid">
                    <div class="navbar-header" style="padding-left: 5%;">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                            <span class="sr-only">切换导航</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/8haoBook/index/list">书馆首页 </a>
                    </div>
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav navbar-right  layui-bg-gray">
                        <c:if test="${sessionScope.user == null}">
                            <li>
                                <a href="#" data-toggle="modal" data-target="#sellerLogin">你好,请登录</a>
                            </li>
                        </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <li>
                                    <a href="#">${user.memname}</a>
                                </li>
                                <li>
                                    <a href="${path}/user/exit">安全退出</a>
                                </li>
                            </c:if>
                            <li style="padding-top:3%;padding-left:3px;padding-right:3px;">|</li>
                            <li>
                                <a href="order center.jsp">我的订单</a>
                            </li>
                            <li style="padding-top:3%;padding-left:3px;padding-right:3px;">|</li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    消息中心 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="/8haoBook/jsp/my message.jsp">我的消息 <span style="margin-left: 30%;" class="badge">3</span></a>

                                    </li>
                                    <li>
                                        <a href="#">降价提醒</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">优惠中心</a>
                                    </li>
                                </ul>
                            </li>
                            <li style="padding-top:3%;padding-left:3px;padding-right:3px;">|</li>


                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    商家服务 <b class="caret"></b>
                                </a>

                                <ul class="dropdown-menu">

                                    <h3>商户</h3>
                                    <c:if test="${sessionScope.user.getIdentify()==0}">
                                        <li>
                                            <a href="${path}/seller/list"  >商家后台</a>

                                        </li>
                                    </c:if>

                                    <li>
                                        <a href="#">商家帮助</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">商家注册</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>


                    </div>
                </div>
            </nav>

        </div>
    </div>
</div>


<div class="container-fluid" style="margin-top: 30px;">

    <div class="row">
        <div class="row col-md-4 col-lg-4 col-sm-4 col-xs-4">
            <a href="/8haoBook/index/list" class="pull-left" style="padding-left: 50px;"><img src="${path}/img/log.jpg" class="img-responsive" style="width:100px;height:100px;border-radius: 50%;" /></a>
            <a href="/8haoBook/index/list" class="pull-left" style="color: red; padding-left: 30px; text-shadow: 3px 3px 1px #000; font-size:300%;padding-top: 30px;">8号书馆</a>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 form-group has-feedback pull-left" style="margin-top: 2.8%;margin-left: 8%;">
            <form class="bs-example bs-example-form form-horizontal"   action="${path}/index/list"  role="form">

                <div class="input-group">
                    <div class="input-icon-group">
                        <div class="input-group" style="width:100%">
                            <input type="text" class="form-control fc-clear" value="${bname}" name="bookName" placeholder="输入图书名或作者">
                            <a href="#"><span class="glyphicon glyphicon-camera form-control-feedback"></span></a>
                        </div>
                    </div>
                    <span class="input-group-btn">
			                        <button class="btn btn-warning btn-search" type="submit">搜索</button>
			                    </span>
                </div>
                <!-- /input-group -->
            </form>
        </div>
        <!-- /.col-lg-6 -->


        <div class="row col-md-3 pull-right" style=" width: 13% ;height: 15%; border-style:solid;border-color:#FFEE99; margin-right: 10%;">
            <a href="/8haoBook/shopcar"><img src="${path}/img/shopingcar.png" class="img-responsive pull-left" style="width: 50%;" /></a>
            <a href="/8haoBook/shopcar" class="pull-left" style="color: red; padding-top: 35%;">我的购物车</a>
        </div>

    </div>
    <!-- /.row -->

</div>
<!--导航end-->
<hr />


<!-- 模态框（Modal） -->

<!-- 模态框（Modal） -->
<!--商家登录begin-->
<div class="modal fade" id="sellerLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h2>商家后台</h2>
                <ul class="nav nav-tabs" style="padding-left: 35%;">
                    <li class="active"><a data-toggle="tab" href="#home2" style="color: black;" >账号登录</a></li>
                    <li><a data-toggle="tab" href="#menu12" style="color: black;">扫码登录</a></li>

                </ul>

                <div class="tab-content">
                    <div id="home2" class="tab-pane fade in active">

                        <!--form表单位置-->
                        <form class="form-horizontal" role="form" style="margin-top: 10%; " id="sellerLoginform">
                            <div class="form-group has-feedback">
                                <label for="sellername" class="col-sm-2 control-label">账户:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    <input type="text" class="form-control" name="sellername" id="sellername"   placeholder="请输入账号或店名">
                                    <label class="label label-danger unameLab pull-right rol-md-2"  id="unameLab">用户不存在</label>
                                </div>

                            </div>
                            <div class="form-group has-feedback">
                                <label for="sellerpsd" class="col-sm-2 control-label">密码:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    <input type="password" class="form-control" name="sellerpwd"  id="sellerpsd" placeholder="请输入密码">
                                    <label class="label label-danger pwdLab" id="pwdLab">密码不正确</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10" style="margin-left: 55%;">
                                    <div class="checkbox" >
                                        <label>
                                            <input type="checkbox">请记住我
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10 " style="margin-left: 60%;">
                                    <button type="button" onclick="sellerlogin()" class="btn btn-default" >登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="menu12" class="tab-pane fade">
                        <img src="${path}/img/ma.JPG" style="width: 36%; height: 36%; margin-left: 30%;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--商家end-->