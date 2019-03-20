<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>主页</title>
    <link rel="stylesheet" href="${path}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/plugins/font-awesome-4.7.0/css/font-awesome.css">
    <link href="${path}/css/ShopCar.css" rel="stylesheet" type="text/css" />
    <link href="${path}/css/bootstrap-spinner.css"/>
    <style type="text/css">
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
<%@ include file="common/nav.jsp"%>



<!-- 模态框（Modal） -->


<!--所购商品信息-->
<div class="container">
    <div class="row">
        <div class="table-responsive">
            <table class="table">
                <caption></caption>
                <thead>
                <tr>
                    <th><input type="checkbox">全选</th>
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody id="goodsbody">


                <c:forEach items="${booksList}" var="b" varStatus="vs">
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="col-md-4"><img class="lazy"   src="${path}${b.getBookid().getImgUrl()}"    alt="通用的占位符缩略图" /><span class="col-md-6 pull-right" style="color: red;">${b.getBookid().getBookname()}</span></td>
                        <td>￥${b.getBookid().getPrice()}</td>
                        <td><input type="number" max="100" min="0" value="${b.num}"></td>
                        <td>￥${b.num*b.getBookid().getPrice()}</td>
                        <%--<td>${b.createDate}</td>--%>
                        <td>
                            <p class="pull-right">
                                <%--<a href="${path}/book/operate?id=${b.id}" class="text-danger">--%>
                                    <%--<span class="text-danger"><span class="glyphicon glyphicon-trash"></span></span>--%>
                                <%--</a>--%>
                                <button class=" btn btn-link" onclick="deletebook(${b.id})" id="${b.id}"> <span class="glyphicon glyphicon-trash"></span>  </button>

                            </p>
                            <p>
                                <a href="#" class="text-warning">
                                    <span class="text-warning"><span class="glyphicon glyphicon-edit"></span></span>
                                </a>
                            </p>
                        </td>

                    </tr>

                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>



<!--统计部分-->
<div class="container-fluid" style="margin-top: 30%">
    <div class="row">
        <div id="final">
            <div id="totalpricebody">
                总计：¥131.80
            </div>
            <a id="pay" href="#" data-toggle="modal" data-target="#myModal">
                结算
            </a>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    用户支付页面
                </h4>
            </div>
            <div class="modal-body">
                <div class="pay_way">
                    <a>
                        <img src="${path}/img/icon-wx.png" width="20px" height="20px">微信支付
                        <input type="radio"></input>
                    </a>
                    <a>
                        <img src="${path}/img/icon-zfb.png" width="20px" height="20px">支付宝支付
                        <input type="radio"></input>
                    </a>
                    <a>
                        <img src="${path}/img/bank_card.jpg" width="20px" height="20px">银行卡支付
                        <input type="radio"></input>
                    </a>
                </div>
                <hr>
                <div align="center">
                    <img id="pay_img" src="${path}/img/pay.png"/>
                </div>
                <hr>
                <a>请扫描二维码支付！</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
</div>
    <!-- /.modal -->

    <script src="${path}/plugins/jquery/jquery.min.js"></script>
    <script src="${path}/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${path}/js/jquery.spinner.js"></script>

    <script type="text/javascript ">
        $('.spinner').spinner();

        function deletebook(n) {
            //var i = $(this).attr("id");
            //alert(n);
            $.ajax({
                typr:'get',
                url:'/8haoBook/shopcar/delete?id='+n,
                data:{"bookid":$(this).attr("id")},
                success:function (data) {
                    if(data==0)
                    {
                        alert("删除成功!");
                        window.location.reload();
                    }

                    else
                        alert("删除失败!");

                }
            })

        }


    </script>
</body>


</html>
