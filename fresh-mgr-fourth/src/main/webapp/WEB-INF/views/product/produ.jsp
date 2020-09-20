<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yan
  Date: 2020/9/15
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全部产品</title>

    <link href="${pageContext.request.contextPath}/resources/css/zfy_css/produ.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/zfy_css/share.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/zzh_share_css.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/zzh_share_js.js"></script>
</head>
<body>
<div class="first">
    <div class="nav">
        <div class="in-nav">
            <li id="name"><a href="#">收藏本站&nbsp;&nbsp;&nbsp;|</a></li>
            <li id="name2"><a href="#">我的资料&nbsp;&nbsp;&nbsp;|</a></li>
            <li id="name3"><a href="#">我的订单&nbsp;&nbsp;&nbsp;|</a></li>
            <li id="name4"><a href="#">购物车</a></li>
            <div id="shopping">
                <p>您的购物车中暂时没有任何产品</p>
                <input type="button" id="shop" value="去购物车结算"/>
            </div>
        </div>
        <div class="inin-nav">
            <input type="button" id="button" value="登录"/>
            <input type="button" id="button2" value="注册" style="background-color:#45A2FF;color: white;border: none;"/>
        </div>

    </div>
</div>


<!--顶部导航-->
<div class="headr">
    <div class="heard-con">
        <img src="/resources/img/public/logo.jpg" style="margin-top: 7px;float: left;position: absolute">
        <div class="headr-nav">
            <ul>
                <li><a href="index.html">首页</a></li>
                <li><a href="toShowHot">蔬果热卖</a></li>
                <li><a href="produ.html" style="color: #4AB344"><span style="color: #4AB344">全部产品</span></a></li>
                <li><a href="consult.html">最新资讯</a></li>
                <li><a href="userInfo.html">个人中心</a></li>
            </ul>
            <div class="sptopfoot">
                <div class="spbottom">
                </div>
            </div>
        </div>
        <div class="headr-right">
            <div class="iconfont" style="font-size: 16px;margin-right: -28px;color: #4AB344">我的购物车</div>

            <div class="hr-car">
                <div class="iconfont1" style="font-size: 15px;left: 20px">您的购物车内暂时没有任何产品。</div>
            </div>
        </div>
    </div>
</div>
<!--顶部导航结束-->
<!--banner图片-->
<div class="her-banner">

</div>
<!--banner图片结束-->
<div class="content">
    <!--产品推荐开始-->
    <div class="recommand clear">
        <div class="rec-cont clear">
            <div class="rec-left">
                <div class="classily">
                    <div class="cltop">
                        <p>产品分类</p>
                    </div>

                    <div class="cltcon">
                        <p><a href="toCategory?category=2">国产水果</a></p>
                        <p><a href="toCategory?category=3"> 进口水果</a></p>
                        <p style="border-bottom:0px dashed #999999;"><a href="toCategory?category=1">新鲜时蔬</a></p>
                    </div>
                </div>
                <div class="service">
                    <div class="cltop">
                        <p>在线客服</p>
                    </div>
                    <div class="sercon">
                        <div class="qqs">
                            <p><a hidefocus="true" href="#">
                                <span class="serOnline-img0 qqImg0">&nbsp;</span>蜜桃
                            </a>
                            </p>
                            <P><a hidefocus="true" href="#">
                                <span class="serOnline-img0 qqImg0">&nbsp;</span>芒果
                            </a>
                            </P>
                        </div>
                        <div class="tims">
                            <div class="marBL-10">
                                <span class="worktime-header-img">&nbsp;</span>
                                <span class="serWorkTimeText"><b>工作时间</b></span>
                            </div>
                            <div class="serOnline-list-v "><span>周一至周五 ：8:30-17:30</span></div>
                            <div class="serOnline-list-v lastData"><span>周六至周日 ：9:00-17:00</span></div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="rec-right">
                <div class="bd">

                    <div class="bd1" style="display: block">
                        <c:forEach items="${products}" var="product">
                            <div class="rcr">
                                <div class="rcr-top">
                                    <img src="/resources/upload/${product.image}" width="100%">
                                </div>
                                <div class="rcr-bot">
                                    <div class="rb-top">
                                            ${product.name}
                                    </div>
                                    <div class="second_P">
                                        <span class="fk-prop">￥</span>
                                        <span class="fk-prop-price">${product.price}
												<span class="fk-prop-p"></span>
											</span>
                                        <span class="second_Marketprice">￥0.00</span>
                                    </div>
                                    <div class="buy">
                                        <a href="toProductDetails?id=${product.id}" class="second_mallBuy">
                                            <span style="color: white;">购买</span>
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="hd">
                    <div class="net">上一页</div>
                    <ul>
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                    <div class="next"> 下一页</div>
                </div>
            </div>
        </div>
    </div>
    <!--产品推荐结束-->
</div>

<!--底部-->
<div class="footer" style="margin-top: 150px">
    <div class="ft-con">
        <div class="ft-top">
            <img src="/resources/img/public/fot-1.jpg">
        </div>
        <div class="ft-bo">
            <div class="ft-b">
                <h3>服务保障</h3>
                <p>正品保证</p>
                <p>7天无理由退换</p>
                <p>退货返运费</p>
                <p>7X15小时客户服务</p>

            </div>
            <div class="ft-b">
                <h3>支付方式</h3>
                <p>公司转账</p>
                <p>货到付款</p>
                <p>在线支付</p>
                <p>分期付款</p>

            </div>
            <div class="ft-b">
                <h3>商家服务</h3>
                <p>商家入驻</p>
                <p>培训中心</p>
                <p>广告服务</p>
                <p>服务市场</p>

            </div>
            <div class="ft-b">
                <h3>服务保障</h3>
                <p>免运费</p>
                <p>海外配送</p>
                <p>EMS</p>
                <p>211限时达</p>

            </div>

        </div>
        <div class="banq">
            <p>©2016 果然新鲜 版权所有</p>
            <p>手机版 | 本站使用<span><img src="${pageContext.request.contextPath}/resources/img/public/ft.jpg"></span>凡科建站搭建 | 管理登录</p>
        </div>

    </div>
</div>


</body>
<script src="${pageContext.request.contextPath}/resources/js/zfy_js/produ.js"></script>
</html>

