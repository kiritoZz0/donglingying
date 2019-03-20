<%--
  Created by IntelliJ IDEA.
  tech.aistar.entity.User: success
  Date: 2019/1/21 0021
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.css" />
    <style type="text/css">
        .myBanner img {
            width: 100%;
        }

        /*.books_c1 {*/
            /*display: none;*/
        /*}*/

        /*.books_c2 {*/
            /*display: block;*/
        /*}*/

        .pwdLab{
            display: none;
        }

        .unameLab{
            display: none;
        }

        .pwdLab2{
            display: block;
        }

        .unameLab2{
            display: block;
        }
    </style>
</head>

<body>

<!--jsp第二个指令include指令-静态包含
    jsp动作 - 动态包含 - > 静态包含和动态包含的区别
-->
<%@ include file="common/nav.jsp"%>
<!--banner-begin-->
<div class="container-fluid myBanner">
    <div class="row">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../img/advert1.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="../img/advert2.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="../img/advert3.jpg" alt="Third slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>

    </div>
</div>
<!--banner - end-->

<!--面包屑begin-->
<div class="container-fluid" style="margin-top: 20px;">
    <div class="row">
        <ul class="breadcrumb">
            <li>
                <a href="#">信息学院</a>
            </li>
            <li>
                <a href="#">班级列表</a>
            </li>
            <li>
                <a href="#">软工1011</a>
            </li>
        </ul>
    </div>
</div>
<!--面包屑end-->

<!--输入框组begin-->
<div class="container-fluid">
    <div class="row">
        <form action="${path}/index/list" class="bs-example bs-example-form" role="form" method="post">
            <div class="col-md-2">
                <select class="form-control" name="typeSelect">
                    <option value="-1">===图书类型===</option>

                    <!--遍历集合-->
                    <c:forEach items="${bookTypeList}" var="t">
                        <option value="${t.id}">${t.typeName}</option>
                    </c:forEach>

                </select>
            </div>
            <div class="col-md-3">
                <div class="input-group">
                    <input type="text" value="${bname}" name="bookName" class="form-control" placeholder="根据书名进行模糊查询">
                    <span class="input-group-btn">
					            <button class="btn btn-info btn-search">
					            	<span class="glyphicon glyphicon-search"></span>
					            </button>
							</span>
                </div>
            </div>
        </form>
    </div>
</div>

<!--输入框组end-->

<div class="container-fluid">
    <div class="">
        <div class="table-responsive">
            <table class="table">
                <caption>图书基本信息</caption>
                <thead>
                <tr>
                    <th><input type="checkbox"></th>
                    <th>序号</th>
                    <th>图书名称</th>
                    <th>图书作者</th>
                    <th>图书价格</th>
                    <th>出版社</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${booksList}" var="b" varStatus="vs">
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>${vs.count}</td>
                        <td>${b.bookName}</td>
                        <td>${b.author}</td>
                        <td>${b.price}</td>
                        <td>${b.publisHouse}</td>
                        <td>
                            <span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>
                            <span class="text-warning"><span class="glyphicon glyphicon-edit"></span></span>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--表格说明begin-->
<!--表格说明end-->

<!--分页-->
<div class="container" style="text-align: center;">
    <div class="row">
        <ul class="pagination">
            <li>
                <a href="#">&laquo;</a>
            </li>
            <li class="active">
                <a href="#">1</a>
            </li>
            <li class="disabled">
                <a href="#">2</a>
            </li>
            <li>
                <a href="#">3</a>
            </li>
            <li>
                <a href="#">4</a>
            </li>
            <li>
                <a href="#">5</a>
            </li>
            <li>
                <a href="#">&raquo;</a>
            </li>
        </ul>
    </div>
</div>

<hr>
<div id="books" class="books_c1">
    <div class="container-fluid">
        <div class="row">
            <div class="row">

                <c:forEach items="${booksList}" var="b">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <input type="checkbox" />
                            <img class="lazy" data-original="${path}/img/${b.imgUrl}" alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3 style="text-align: center;">${b.bookName}</h3>
                                <p class="pull-right">
                                    <a href="#" class="text-danger">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </p>
                                <p>
                                    <a href="#" class="text-warning">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>
</div>

<!--引入jquery-->
<script type="text/javascript" src="${path}/plugins/jquery/jquery.min.js"></script>
<!--引入bootstrap.js-->
<script type="text/javascript" src="${path}/plugins/bootstrap/js/bootstrap.js"></script>
<!--引入延迟加载js-->
<script type="text/javascript" src="${path}/plugins/lazyload/jquery-lazyload.min.js"></script>
<script>
    $(function() {
        $('#myCarousel').carousel({
            interval: 2000
        })
    });

    $(function() {
        $("img.lazy").lazyload({
            effect: "fadeIn"
        });
    });

    /**登录**/
    function myLogin(){
        //用ajax的方式将表单数据提交到后台.
//        var uname = document.getElementById("username").value;
//        alert(uname);
//
//        var v = $("#password").val();
//        alert(v)

        //通过id获取登录表单的对象
        //坑 - 一定要给表单中的控件提供一个name属性 值
        // 那么才会形成key=value
        var form_obj = $("#loginForm");
        //对表单进行序列化操作.
        var formData = form_obj.serialize();

        //jquery
        $.ajax({
            type:'post',//get请求
            url:'${path}/user/login',//请求的url
            data:formData,
            success:function(data){
                //当后台成功返回之后执行.
                //alert(data)
                var v = document.getElementById("pwdLab");
                var un = document.getElementById("unameLab");

                if(data == 0){
                    un.className = "label label-danger unameLab2";
                    v.className = "label label-danger pwdLab";
                }else if(data == 1){
                    un.className = "label label-danger unameLab";
                    v.className = "label label-danger pwdLab2";
                }else{
                    //get请求...
                    window.location.href="${path}/index/list";
                }


//                if(data == 0){
//                    v.className="label label-danger pwdLab2";
//                }else{
//                    v.className="label label-danger pwdLab";
//                    //alert("success..")
//                }
            }
        })
    }
</script>
</body>

</html>
