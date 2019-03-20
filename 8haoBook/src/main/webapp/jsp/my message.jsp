<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>我的消息</title>
    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.min.css" />
    <style type="text/css">
        .myLink li:hover {
            color: cornflowerblue;
            background-color: white;
        }
    </style>

</head>
<body data-spy="scroll" data-target="#myScrollspy">
<%@ include file="common/nav.jsp"%>


<link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/myjd-2015/css/myjd.message2015.css" />
<div id="main">
    <div class="mod-main mod-comm message-box">
        <form action="" id="queryMsgFrom" method="post">
            <div class="mc">
                <div class="mg-left" style="padding-top:0px">
                    <div class=>
                        <div class="ui-scrollbar-main">
                            <ul>
                                <li onclick="queryByType(1)" class="mg-types mg-types-cur" style="width: 215px; height: 110px;">
		    							    <span class="mg-timg actimg">
		        								<s id="unsubscribe_icon_1" class="hide"></s>
		        								    </span>
                                    <div class="mg-tcont">
                                        <div class="mg-ttitle">
                                            <div style="float:left;width:80px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                                                <a href="javascript:void(0);" title="系统通知">
                                                    系统通知
                                                </a>
                                            </div>
                                            <span class="mg-ttime"></span>
                                        </div>
                                        <span class="mg-illus">
		            								<div style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:135px;float:left">
		            								    											<font color="grey">无未读消息</font>
		            								            								</div>
		            							</span>
                                    </div>
                                </li>
                                <li onclick="queryByType(2)" class="mg-types "style="width: 215px; height: 110px;">
		    							        							<span class="mg-timg simg">
		        								<s id="unsubscribe_icon_2" class="hide"></s>
		        								        							</span>
                                    <div class="mg-tcont">
                                        <div class="mg-ttitle">
                                            <div style="float:left;width:80px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                                                <a href="javascript:void(0);" title="社区消息">
                                                    社区消息
                                                </a>
                                            </div>
                                            <span class="mg-ttime"></span>
                                        </div>
                                        <span class="mg-illus">
		            								<div style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:135px;float:left">
		            								    											<font color="grey">无未读消息</font>
		            								            								</div>
		            							</span>
                                    </div>
                                </li>
                                <li onclick="queryByType(3)" class="mg-types "style="width: 215px; height: 110px;">
		    							        							<span class="mg-timg runimg">
		        								<s id="unsubscribe_icon_3" class="hide"></s>
		        								        							</span>
                                    <div class="mg-tcont">
                                        <div class="mg-ttitle">
                                            <div style="float:left;width:80px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                                                <a href="javascript:void(0);" title="系统公告">
                                                    系统公告
                                                </a>
                                            </div>
                                            <span class="mg-ttime"></span>
                                        </div>
                                        <span class="mg-illus">
		            								<div style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:135px;float:left">
		            								    											<font color="grey">无未读消息</font>
		            								            								</div>
		            							</span>
                                    </div>
                                </li>
                                <li onclick="queryByType(5)" class="mg-types "style="width: 215px; height: 110px;">
		    							        							<span class="mg-timg presellimg">
		        								<s id="unsubscribe_icon_5" class="hide"></s>
		        								        							</span>
                                    <div class="mg-tcont">
                                        <div class="mg-ttitle">
                                            <div style="float:left;width:80px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                                                <a href="javascript:void(0);" title="预售">
                                                    预售
                                                </a>
                                            </div>
                                            <span class="mg-ttime"></span>
                                        </div>
                                        <span class="mg-illus">
		            								<div style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:135px;float:left">
		            								    											<font color="grey">无未读消息</font>
		            								            								</div>
		            							</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="" style="padding-bottom:10px">
                    <div class="mg-select">
                        <div class="mg-msgtitle">
                            <input id="typeId" type="hidden" value="1" />
                            <input id="typeName" type="hidden" value="系统通知" />
                            <input id="unsubscribe" type="hidden" value=""/>系统通知
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第一条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第二条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第三条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第四条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第五条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></th>
                                    <td>第六条消息</td>
                                    <td>
                                        <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>
</div>
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
                    <li class="active"><a data-toggle="tab" href="#home2" style="color: black;" >账号登录</a></li>
                    <li><a data-toggle="tab" href="#menu12" style="color: black;">扫码登录</a></li>

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
                                    <div class="checkbox" >
                                        <label>
                                            <input type="checkbox">请记住我
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10 " style="margin-left: 60%;">
                                    <button type="submit" class="btn btn-default" >登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="menu12" class="tab-pane fade">
                        <img src="${path}/img/ma.jpg" style="width: 36%; height: 36%; margin-left: 30%;"/>
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
<script type="text/javascript" src="${path}/plugins/jquery/jquery.min.js"></script>
<!--引入bootstrap.js-->
<script type="text/javascript" src="${path}/plugins/bootstrap/js/bootstrap.js"></script>
<!--引入延迟加载js-->
<script type="text/javascript" src="${path}/plugins/lazyload/jquery-lazyload.min.js"></script>
</body>

</html>