<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <title>《好玩的数学和语文 少儿读物7-10岁小学生课外阅读故事书 精装彩图版三四五六年级 好玩的数学6册》</title>
    <link rel="stylesheet" type="text/css" href="${path}/plugins/bootstrap/css/bootstrap.min.css" />
    <style type="text/css">
        .myLink li:hover {
            color: cornflowerblue;
            background-color: white;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="//static.360buyimg.com/item/unite/1.0.67/components/??book/widget/common/common.css,book/widget/main/main.css,book/widget/sprite/sprite.css,book/widget/contrast/contrast.css,book/widget/combineShare/combineShare.css,book/widget/itemInfo/itemInfo.css,book/widget/extInfo/extInfo.css,book/widget/promiseIcon/promiseIcon.css,book/widget/popbox/popbox.css,book/widget/popScore/popScore.css,book/widget/preview/preview.css,book/widget/fitting/fitting.css,book/widget/ui-box/ui-box.css,book/widget/ui-star/ui-star.css,book/widget/ui-tag/ui-tag.css" source="widget" />
    <link rel="stylesheet" type="text/css" href="//static.360buyimg.com/item/unite/1.0.67/components/??book/widget/detailContent/detailContent.css,book/widget/ui-page/ui-page.css,book/widget/consult/consult.css,book/widget/discuss/discuss.css,book/widget/yourFind/yourFind.css,book/widget/contact/contact.css,public/modules/detail/detail.css,public/modules/crumb/crumb.css" source="widget" />
</head>

<body version="140120" class="cat-1-1713 cat-2-3263 cat-3-3394 cat-4- item-28442237315 POP POP-3">
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
                        <a class="navbar-brand" href="/8haoBook/jsp/phomepage.jsp">书馆首页 </a>
                    </div>
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal" onclick="user_login()">你好,请登录</a>
                            </li>
                            <li style="padding-top:3%;padding-left:3px;padding-right:3px;">|</li>
                            <li>
                                <a href="/8haoBook/jsp/order center.jsp">我的订单</a>
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
                                    <li>
                                        <a href="#" onclick="seller_login()" data-toggle="modal" data-target="#myModal2" >商家后台</a>
                                    </li>
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
            <a href="/8haoBook/jsp/homepage.jsp" class="pull-left" style="padding-left: 50px;"><img src="${path}/img/log.jpg" class="img-responsive" style="width:100px;height:100px;border-radius: 50%;" /></a>
            <a href="/8haoBook/jsp/homepage.jsp" class="pull-left" style="color: red; padding-left: 30px; text-shadow: 3px 3px 1px #000; font-size:300%;padding-top: 30px;">8号书馆</a>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 form-group has-feedback pull-left" style="margin-top: 2.8%;margin-left: 8%;">
            <form class="bs-example bs-example-form form-horizontal" role="form">

                <div class="input-group">
                    <div class="input-icon-group">
                        <div class="input-group" style="width:100%">
                            <input type="text" class="form-control fc-clear">
                            <a href="#"><span class="glyphicon glyphicon-camera form-control-feedback"></span></a>
                        </div>
                    </div>
                    <span class="input-group-btn">
			                        <button class="btn btn-warning" type="button">搜索</button>
			                    </span>
                </div>
                <!-- /input-group -->
        </div>
        <!-- /.col-lg-6 -->

        </form>
        <div class="row col-md-3 pull-right" style=" width: 13% ;height: 7%; border-style:solid;border-color:#FFEE99; margin-right: 10%;">
            <a href="/8haoBook/jsp/ShopCar.jsp"><img src="${path}/img/shopingcar.png" class="img-responsive pull-left" style="width: 50%;" /></a>
            <a href="/8haoBook/jsp/ShopCar.jsp" class="pull-left" style="color: red; padding-top: 35%;">我的购物车</a>
        </div>

    </div>
    <!-- /.row -->

</div>
<!--导航end-->
<hr />

<!--引入jquery-->
<script type="text/javascript" src="${path}/plugins/jquery/jquery.min.js"></script>
<!--引入bootstrap.js-->
<script type="text/javascript" src="${path}/plugins/bootstrap/js/bootstrap.js"></script>
<!--引入延迟加载js-->
<script type="text/javascript" src="${path}/plugins/lazyload/jquery-lazyload.min.js"></script>
<div id="name">
    <div class="sku-name">长安十二时辰</div>
</div>
<div id="preview" class="preview">
    <div id="spec-n1" class="jqzoom main-img" data-big="1" clstag="shangpin|keycount|product|mainpic_3">
        <img data-img="1" width="350" height="330" src="${path}/img/book01.jpg"/>
    </div>

</div>
<div>
    <br>
    <strong>产品详情：</strong><br />唐天宝三年，元月十四日，长安。 大唐皇都的居民不知道，上元节辉煌灯火亮起之时，等待他们的，将是场吞噬一切的劫难。 突厥、狼卫、绑架、暗杀、烈焰、焚城，毁灭长安城的齿轮已经开始转动。而拯救长安的全部希望，只有一个即将被斩首的独眼死囚和短短的十二个时辰……<br><br>
    <strong>作者简介：</strong><br />马伯庸：作家。人民文学奖、朱自清散文奖得主，有“文字鬼才”之誉。 被评为沿袭“‘五四’以来历史文学创作的谱系”，“文字风格充满奇趣”。 代表作《古董局中局》入选第四届“中国图书势力榜”文学类年度十大好书。<br><br>
</div>
<div class="state"><strong>价格：</strong></div>
<div class="dd">


    <span class="pricing">￥56</span><br><br>
</div>
<div class="J-gift-selected hide">
    <div class="gift choosed J-gift-choosed"></div>
    <a href="#none" class="gift-modify J-popup" clstag="shangpin|keycount|product|zengpin-genggai">更改</a>
</div>
</div>
</div>

<div id="choose-service" class="li hide">
    <div class="dt"></div>
    <div class="dd"></div>
</div>
<div id="choose-additional" class="li choose-additional hide"></div>
<div id="choose-result"></div>
<div id="choose-baitiao" class="li p-choose choose-baitiao" style="display: none"></div>
<div id="choose-btns" class="li">
    <div class="choose-amount fl " clstag="shangpin|keycount|product|goumaishuliang_3">
        <div class="wrap-input">
            <a class="btn-reduce" href="#none" onclick="setAmount.reduce('#buy-num')">-</a>
            <a class="btn-add" href="#none" onclick="setAmount.add('#buy-num')">+</a>
            <input class="text" id="buy-num" value="1" onkeyup="setAmount.modify('#buy-num');" data-max="200" />
        </div>
    </div>
    <a class="btn-special1 btn-lg btn-disable" style="display:none;" id="choose-btn-qiang" href="#none" clstag="shangpin|keycount|product|抢购_3">抢购</a>
    <div class="head" data-drop="head">
        <a id="InitCartUrl-mini" class="btn-primary" href="//cart.jd.com/gate.action?pid=26353424469&pcount=1&ptype=1" clstag="shangpin|keycount|product|gouwuchexuanfu_3">加入购物车</a>
    </div>
    <div class="w">
        <div class="detail">
            <div id="J-baby" data-url="//up.jd.com/book?entrance=pc_sx_book_1713_3263"></div>
            <div class="p-parameter" clstag="shangpin|keycount|product|canshuqu_3">
                <p class="more-par">
                    <a href="#product-detail" class="J-more-param">联系客服&gt;&gt;</a>
                <p>
            </div>
            <div id="J-detail-pop-tpl-top-new" clstag="shangpin|keycount|product|pop-glbs"></div>
            <div class="item-detail item-detail-copyright">
                <div id="promises">
                    <strong>服务承诺：</strong><br /> 平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
                    <br /> 注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                    <br /><br />
                </div>
                <div id="state">
                    <strong>权利声明：</strong><br />所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
                    <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
                    <p>印刷版次不同，印刷时间和版次以实物为准。</p>
                    <br />
                    <strong>价格说明：</strong><br />
                    <p><b>价格：</b>价格为商品的销售价，是您最终决定是否购买商品的依据。</p>
                    <p><b>折扣：</b>如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。</p>
                    <p><b>异常问题：</b>商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。</p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- 用户登录-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h2>用户登录</h2>
                <ul class="nav nav-tabs" style="padding-left: 35%;">
                    <li class="active"><a data-toggle="tab" href="#home" style="color: black;" >账号登录</a></li>
                    <li><a data-toggle="tab" href="#menu1" style="color: black;">扫码登录</a></li>

                </ul>

                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">

                        <!--form表单位置-->
                        <form class="form-horizontal" role="form" style="margin-top: 10%; ">
                            <div class="form-group has-feedback">
                                <label for="firstname" class="col-sm-2 control-label">账户:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    <input type="text" class="form-control" id="firstname" placeholder="请输入账号或用户名">
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="lastname" class="col-sm-2 control-label">密码:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    <input type="password" class="form-control" id="lastname" placeholder="请输入密码">
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
                                    <button type="submit" class="btn btn-default" ">登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <img src="${path}/img/ma.jpg" style="width: 36%; height: 36%; margin-left: 30%;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!--用户登录end-->

<!-- 模态框（Modal） -->
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
                                    <button type="submit" class="btn btn-default" ">登录</button>
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

</body>

</html>
