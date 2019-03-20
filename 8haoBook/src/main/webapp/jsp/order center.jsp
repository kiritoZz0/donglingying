<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单中心</title>
    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.min.css" />
    <style type="text/css">
        .myLink li:hover {
            color: cornflowerblue;
            background-color: white;
        }
    </style>
</head>

<body>

<%@ include file="common/nav.jsp"%>

<h3>我的订单</h3>

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

                    <a class="navbar-brand" href="#">全部订单</a>
                    <a class="navbar-brand" href="#">待付款</a>
                    <a class="navbar-brand" href="#">待发货</a>
                    <a class="navbar-brand" href="#">待收货</a>
                    <a class="navbar-brand" href="#">待评价</a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="商品名称/商品编号/订单号">
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>
                        </form>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<!--面包屑begin-->
<div class="container-fluid">
    <div class="row">
        <ul class="breadcrumb">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    近三个月订单 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">近半年订单</a>
                    </li>
                    <li>
                        <a href="#">2018订单</a>
                    </li>
                    <li>
                        <a href="#">2017订单</a>
                    </li>
                    <li>
                        <a href="#">2016订单</a>
                    </li>
                </ul>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    全部状态 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">等待付款</a>
                    </li>
                    <li>
                        <a href="#">等待收货</a>
                    </li>
                    <li>
                        <a href="#">已完成</a>
                    </li>
                    <li>
                        <a href="#">已取消</a>
                    </li>
                </ul>
            </li>

            <ul class="nav navbar-nav navbar-right">
                <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
            </ul>
        </ul>
    </div>
</div>
<!--面包屑end-->

<div class="container">
    <div class="row">
        <div class="table-responsive">
            <table class="table">
                <caption>订单信息</caption>
                <thead>
                <tr>
                    <th><input type="checkbox"></th>
                    <th>宝贝</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>商品操作</th>
                    <th>实付款</th>
                    <th>交易状态</th>
                    <th>交易操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>感官品牌</td>
                    <td>¥32</td>
                    <td>2</td>
                    <td>....</td>
                    <td>¥64</td>
                    <td>待收货</td>
                    <td>....</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>天才在左 疯子在右</td>
                    <td>¥35.5</td>
                    <td>1</td>
                    <td>....</td>
                    <td>¥35.5</td>
                    <td>已收货</td>
                    <td>....</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>乞力马扎罗的雪</td>
                    <td>¥25.7</td>
                    <td>2</td>
                    <td>....</td>
                    <td>¥51.4</td>
                    <td>已收货</td>
                    <td>....</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>长安十二时辰</td>
                    <td>¥54.7</td>
                    <td>1</td>
                    <td>....</td>
                    <td>¥54.7</td>
                    <td>已收货</td>
                    <td>....</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>时间线</td>
                    <td>¥98</td>
                    <td>1</td>
                    <td>....</td>
                    <td>¥98</td>
                    <td>已收货</td>
                    <td>....</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--商家登录begin-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h2>商家后台</h2>
                <ul class="nav nav-tabs" style="padding-left: 35%;">
                    <li class="active">
                        <a data-toggle="tab" href="#home2" style="color: black;">账号登录</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#menu12" style="color: black;">扫码登录</a>
                    </li>

                </ul>

                <div class="tab-content">
                    <div id="home2" class="tab-pane fade in active">

                        <!--form表单位置-->
                        <form class="form-horizontal" role="form" style="margin-top: 10%; " action="/8haoBook/jsp/seller_serve.jsp">
                            <div class="form-group has-feedback">
                                <label for="sellername" class="col-sm-2 control-label">账户:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    <input type="text" class="form-control" id="sellername" placeholder="请输入账号或店名">
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="sellerpsdname" class="col-sm-2 control-label">密码:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    <input type="password" class="form-control" id="sellerpsdname" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10" style="margin-left: 55%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">请记住我
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10 " style="margin-left: 60%;">
                                    <button type="submit" class="btn btn-default" ">登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="menu12 " class="tab-pane fade ">
                        <img src="${path}/img/ma.jpg " style="width: 36%; height: 36%; margin-left: 30%; "/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!--商家end-->

<!--引入jquery-->
<script type="text/javascript " src="${path}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${path}/plugins/bootstrap/js/bootstrap.js "></script>
<!--引入延迟加载js-->
<script type="text/javascript " src="${path}/plugins/lazyload/jquery-lazyload.min.js "></script>
</body>

</html>
