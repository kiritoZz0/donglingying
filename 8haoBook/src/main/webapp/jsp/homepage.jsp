<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>主页</title>
    <link rel="stylesheet" type="text/css " href="${path}/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css " href="${path}/plugins/layui/css/layui.css" />
    <style type="text/css">
        .myLink li:hover {
            color: cornflowerblue;
            background-color: white;
        }

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

        .myBanner img {
            width: 100%;
            height: 100%;
        }

        #M {
            /*设置背景颜色*/
            background-color: #FF7F50;
            width: 350px;
            height: 350px;
        }
    </style>
</head>

<body>


<%@ include file="common/nav.jsp"%>
<!--banner-begin-->
<div class="container-fluid myBanner" style="margin-top: 30px;margin-left: 10%;margin-right: 10%;">
    <div class="row">

            <!-- 轮播（Carousel）指标 -->
        <div class="layui-carousel" id="test1">
            <div carousel-item>
                <div> <img src="${path}/img/advert1.jpg" alt="First slide"></div>
                <div> <img src="${path}/img/advert2.jpg" alt="Second slide"></div>
                <div><img src="${path}/img/advert3.jpg" alt="Third slide"></div>
            </div>
        </div>

    </div>
</div>
<!--banner - end-->

<hr>



<div id="books" class="books_c1">
    <div class="container-fluid">
        <div class="row">
            <div class="row">
                <div class="container-fluid" style="background-color:navajowhite ;">
                    <p>
                        <font size="5" color="white">社科经管</font>
                    </p>
                </div>
                <div class="container-fluid col-md-1" style="margin-top: 14%;margin-left: 3%;">
                    <div class="row">
                        <ul class="layui-nav layui-nav-tree" lay-filter="test" style="width: 200%;">
                            <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
                            <li class="layui-nav-item layui-nav-itemed" style="padding-top: 5%">
                                <a href="javascript:;">特色分类</a>
                                <dl class="layui-nav-child">
                                    <dd><a href="javascript:;">人气推荐</a></dd>
                                    <dd><a href="javascript:;">特色馆区</a></dd>
                                    <dd><a href="">畅销榜</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item" style="padding-top: 5%">
                                <a href="javascript:;">文学综合馆</a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">小说</a></dd>
                                    <dd><a href="">青春</a></dd>
                                    <dd><a href="">动漫</a></dd>
                                    <dd><a href="">传记</a></dd>
                                    <dd><a href="">散文</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item" style="padding-top: 5%">
                                <a href="javascript:;">经管综合馆</a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">管理</a></dd>
                                    <dd><a href="">经济</a></dd>
                                    <dd><a href="">投资</a></dd>
                                    <dd><a href="">会计</a></dd>

                                </dl>
                            </li>
                            <li class="layui-nav-item" style="padding-top: 5%">
                                <a href="javascript:;">教育馆</a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">中小教辅</a></dd>
                                    <dd><a href="">外语学习</a></dd>
                                    <dd><a href="">作文</a></dd>
                                    <dd><a href="">考研</a></dd>
                                    <dd><a href="">教师资格</a></dd>
                                    <dd><a href="">字典词典</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item" style="padding-top: 5%"><a href="" style="color: red">限时折扣</a></li>
                            <li class="layui-nav-item" style="padding-top: 5%" ><a href="" style="color: red">新书上架</a></li>
                        </ul>

                    </div>
                </div>

                <div class="container-fluid col-md-8" style="margin-left: 16%">
                    <div class="row">
                        <c:forEach items="${booksList}" var="b" varStatus="vs">

                            <div class="col-sm-6 col-md-4" style="margin-top: 1.5%;height: 47%">
                                <div class="thumbnail">
                                    <input type="checkbox" />
                                    <a href="/8haoBook/jsp/changanshiershichen.jsp"><img class="lazy" data-original="${path}${b.imgUrl}"  alt="通用的占位符缩略图"></a>
                                    <div class="caption">
                                        <a href="/8haoBook/jsp/changanshiershichen.jsp" style="color: black;"><h3 style="text-align: center;">${b.bookname}</h3></a>
                                        <h4  style="color: red; padding-left:75%;padding-top: 5%;padding-bottom: 3%">￥${b.price}</h4>
                                        <p class="pull-right">
                                            <%--<a href="/8haoBook/shopcar/add?id=${b.id}" class="text-danger">--%>
                                                <%--<span class="glyphicon glyphicon-shopping-cart">加入购物车</span>--%>
                                            <%--</a>--%>
                                            <button class=" btn btn-link" onclick="addbook(${b.id})" id="${b.id}"> <span class="glyphicon glyphicon-shopping-cart">加入购物车</span>  </button>
                                        </p>
                                        <p>
                                            <button  class=" btn btn-link" style="color: red" onclick="like()">
                                                <span class="glyphicon glyphicon-heart-empty" >收藏</span>
                                            </button>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>


                <div class="container" style="text-align: center;">
                    <ul class=" pager">
                        <li>
                            <a href="#">Previous</a>
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
                            <a href="#">Next</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>



<!--引入jquery-->
<script type="text/javascript " src="${path}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${path}/plugins/bootstrap/js/bootstrap.js "></script>
<!--引入延迟加载js-->
<script type="text/javascript " src="${path}/plugins/lazyload/jquery-lazyload.min.js "></script>
<script type="text/javascript " src="${path}/plugins/layui/layui.all.js "></script>

<script type="text/javascript ">
    $(function() {
        $('#myCarousel').carousel({
            interval: 2000
        })
    });

    $(function() {
        $("img.lazy").lazyload({effect: "fadeIn"});
    });
    function addbook(n) {
        //var i = $(this).attr("id");
        //alert(n);
        $.ajax({
            typr:'get',
            url:'/8haoBook/shopcar/add?id='+n,
            data:{"bookid":$(this).attr("id")},
            success:function (data) {
                if(data==0)
                    alert("添加失败!")
                else
                    alert("添加成功!")

            }
        })

    }

    function sellerlogin() {
        var form_obj = $("#sellerLoginform");
        var formData =form_obj.serialize();
        $.ajax({
        type:'get',
        url:'${path}/seller/login',
        data:formData,
        success: function (data) {
            var v = document.getElementById("pwdLab");
            var un = document.getElementById("unameLab");
        if(data==0)
        {

            window.location.href="${path}/index/list";
        }
        else if(data==1){

            un.className = "label label-danger unameLab";
            v.className = "label label-danger pwdLab2";

        }
        else if(data==2)
        {

            un.className = "label label-danger unameLab2";
            v.className = "label label-danger pwdLab";
        }
        else {
            alert("非授权用户");
        }
        }
        })
    }

    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });


    function userlogin() {
        var form_obj = $("#userloginform");
        var formData =form_obj.serialize();
        $.ajax({
            type:'get',
            url:'${path}/seller/login',
            data:formData,
            success: function (data) {
                var v = document.getElementById("pwdLab");
                var un = document.getElementById("unameLab");
                if(data==0)
                {
                    window.location.href="${path}/index/list";

                }
                else if(data==1){

                    un.className = "label label-danger unameLab";
                    v.className = "label label-danger pwdLab2";

                }
                else if(data==2)
                {

                    un.className = "label label-danger unameLab2";
                    v.className = "label label-danger pwdLab";
                }
                else {
                    alert("非授权用户");

                }
            }
        })
    }

    function like()
    {
        //var likebook= document.getElementById(l);
        //likebook.className ="glyphicon glyphicon-heart";
    }



</script>

</body>

</html>
