<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yan
  Date: 2020/9/15
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品价格</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/szh_css/test02.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/szh_css/share_top.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/szh_css/share.css"/>
    <link href="${pageContext.request.contextPath}/resources/css/zzh_share_css.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/resources/js/szh_js/common.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/resources/js/szh_js/contains.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/resources/js/zzh_share_js.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            //总价
            var sum = $(".realMallAmount").text();
            //获取数量
            var num = $("#num").val();
            //获取单价
            var unitPrice = $(".realMallAmount").text();

            //计算总价
            function count() {
                sum = (Number(unitPrice * num)).toFixed(2);
            }

            //点击加或者减的时候，实现加减的操作

            //点击加
            $("#add").click(function () {
                if (num >= 100) {
                    alert("数量不能再加！")

                } else {
                    num++;
                    $("#num").val(num);
                    count();
                }

            })
            //点击减
            $("#sub").click(function () {
                if (num <= 1) {
                    alert("数量不能再减！")

                } else {
                    num--;
                    $("#num").val(num);
                    count();
                }

            })

            $(".button_addcart").click(function () {
                alert(sum)
                window.location.href = "";
            })


            var showproduct = {
                "boxid": "showbox",
                "sumid": "showsum",
                "boxw": 500, //宽度,该版本中请把宽高填写成一样
                "boxh": 395, //高度,该版本中请把宽高填写成一样
                "sumw": 70, //列表每个宽度,该版本中请把宽高填写成一样
                "sumh": 60, //列表每个高度,该版本中请把宽高填写成一样
                "sumi": 15, //列表间隔
                "sums": 6, //列表显示个数
                "sumsel": "sel",
                "sumborder": 1, //列表边框，没有边框填写0，边框在css中修改
                "lastid": "showlast",
                "nextid": "shownext"
            }; //参数定义

            $.ljsGlasses.pcGlasses(showproduct); //方法调用，务必在加载完后执行


        })

    </script>

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
                <li><a href="toShowProduct">全部产品</a></li>
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

<div class="the_boss">
    <div>
        <div class="t_pro_detail">
					<span class="t_pro_title">
						产品详情
					</span>
        </div>
    </div>
    <table style="margin: auto;">
        <c:forEach items="${products}" var="product">
        <td width="527px">
            <div class="outborder">
                <!-- 商品图片展示 -->
                <!-- 商品图片展示 -->

                <div class="pro_show_img">
                    <img src="/resources/upload/${product.image}" width="500" height="385"/>
                </div>
                <div class="collect">
                    <div class="coll">
                        <div class="iconfont-sc">

                            <a href="" class="iconfont-sc-a">收藏</a>
                        </div>
                    </div>
                    <div class="coll">
                        <div class="iconfont-fx">
                            <a href="" class="iconfont-fx-a">分享</a></div>
                        <div class="share">

                        </div>
                    </div>
                </div>
                <div class="next">
                    <div class="nt">
                        <c:if test="${product.id > 1}">
                            <a href="toProductDetails?id=${product.id-1} ">
                                上一个
                            </a>
                        </c:if>
                        <c:if test="${product.id == 1 }">
                            <a href="#">
                                上一个
                            </a>
                        </c:if>

                    </div>
                    <div class="nt ntp">
                        <c:if test="${product.id >= 1 && product.id <16 }">
                            <a href="toProductDetails?id=${product.id+1}">
                                下一个
                            </a>
                        </c:if>
                        <c:if test="${product.id >= 16}">
                            <a href="#">
                                下一个
                            </a>
                        </c:if>
                    </div>
                </div>

            </div>
        </td>
        <td width="657px">
            <div class="pdLayoutR">
                <div class="J_productTitle">
                    <span>${product.name}</span>
                    <input type="hidden" name="productId" value="${product.id}"/>
                </div>
                <div>
                    <div class="pd_propTable">
                        <table class="fk-propTable" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td class="proName">价格：</td>
                                <td class="propValue">
                                    <div>
                                        <span class="f-mallUnit">￥</span>
                                        <span class="realMallAmount">${product.price}</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <div class="fk-proSatifySum">
                                        <div class="f-proSatifySumWrap">
                                            <div class="f-satifyDetail">
                                                <span class="salesVolume">销量：</span>
                                                <span>${product.saleNum}</span>
                                            </div>
                                            <div class="f-pdDetailBorder"></div>
                                            <div class="f-satifyDetail">
                                                <span class="salesVolume">评论：</span>
                                                <span>${product.remarkNum}</span>条
                                            </div>
                                            <div class="f-pdDetailBorder"></div>
                                            <div class="f-satifyDetail">
                                                <span class="salesVolume">收藏：</span>
                                                <span>5</span>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="fk-pd5MallCartCount">
                                        <div class="f-cartbuyCountWrap">
                                            <span class="f-propName g_minor"
                                                  style="width:75px;min-width:75px;max-width: 75px;">购买数量：</span>
                                            <input type="text" value="1" id="num"
                                                   class="g_itext cartBuyCount f-cartBuyCount"/>
                                        </div>
                                        <div class="f-buyCountBtn">
                                            <input type="button" class="f-countBtn mallJian " id="add" value="ˆ"/>
                                            <input type="button" class="f-countBtn disableMallJian" id="sub" value="ˇ"/>

                                        </div>
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="optionMsg"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" valign="top">
                                    <div class="last_confirm">
                                        <div class="button_1 button_addcart">加入购物车</div>
                                        <div class="button_1 button_buy">立即购买</div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="productGuarantee">
                        <div class="pName">产品保证</div>
                        <div style="overflow: hidden;padding-left: 2px;">
                            <div class="pValue">
                                <div style="line-height:16px;" class="J_guaranteeName" _explain="">
                                    <i class="icon-guarantee g_stress fk-mainFontColor">
                                        <img src="${pageContext.request.contextPath}/resources/img/szh_img/shopdetail_icon/dagou.PNG" width="18px" height="18px"/>
                                    </i>
                                    <span class="guaranteeName">正品保证</span>
                                </div>
                            </div>
                            <div class="pValue">
                                <div style="line-height:16px;" class="J_guaranteeName" _explain="">
                                    <i class="icon-guarantee g_stress fk-mainFontColor">
                                        <img src="${pageContext.request.contextPath}/resources/img/szh_img/shopdetail_icon/dagou.PNG" width="18px" height="18px"/>
                                    </i>
                                    <span class="guaranteeName">快速发货</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </table>


    <!-- 商品内容 -->
    <div class="prod_contains">
        <div class="hd">
            <ul class="tabs">
                <li class="active li1" id=".bd11">
                    <div class="hd1 acti"></div>
                    产品详情
                </li>
                <li class="li2 " id=".bd12">
                    <div class="hd1"></div>
                    <a href="/toShowRemark/${product.id}">产品评论</a>(<span>${product.remarkNum}</span>)
                </li>
                <li class="li3" id=".bd13">
                    <div class="hd1"></div>
                    销售记录(<span>1</span>)
                </li>
            </ul>

        </div>


        <!-- <div class="bd"> -->

        <div class="bd1 bd11 fk-datailedDesc">
            <div class="richContent">
                <p>
                    <img src="/resources/upload/${product.description}">
                </p>
            </div>
        </div>

        <div class="bd1 bd12 pro_comment">
            <div class="msgBorder">
                <div class="msgAdd">
                    <div class="productCommentAndPagenation">
                        <c:forEach items="${remarks}" var="remark">
                            <div class="fk_pdMemberCommetn msgItem g_border">
                                <div class="f-msgBorderMemberImg">
                                    <div class="msgBoard_member_imgOuter">
                                        <img class="msgBoard_member_headpic" src="${pageContext.request.contextPath}/resources/img/public/${remark.img}"
                                             style="height: 50px;"/>
                                    </div>
                                </div>
                                <div class="pd-p180">
                                    <!-- 评论人名字和评论时间 -->
                                    <div class="f-memberCommInfo msgBoard_marginLeft">
                                        <div class="f-menberName" title="userName">
                                            <span class="J_countRecSize">${remark.realName}</span>
                                        </div>
                                        <div class="msgTime"></div>
                                    </div>
                                    <!-- 评论内容 -->
                                    <div class="f-memberCommentWrap">
                                        <table class="pd-commentTabble">
                                            <tbody>
                                            <tr>
                                                <td class="pd-commTabbleTd" valign="top">
                                                    <div class="userMsg">
                                                            ${remark.content}
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="pd-h30"></div>
                                </div>
                                <div class="clearfloat"></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="bd1 bd13">
                <div class="sale_recoder_header">
                    <table class="table_header">
                        <tbody>
                        <tr>
                            <td class="h_creater">买家</td>
                            <td class="h_optionType">选项信息</td>
                            <td class="h_amount">数量</td>
                            <td class="h_paidTime">成交时间</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="sale_record_body">
                    <table class="table_body">
                        <tbody>
                        <tr class="	b_li">
                            <td class="b_creater">
                                <span class="b_creater_img"></span>
                                匿名用户
                            </td>
                            <td class="b_optionType"></td>
                            <td class="b_amout">1</td>
                            <td class="b_paidTime">
                                <span>2020-5-20</span><br/>
                                <span>11:14:23</span>
                            </td>
                        </tr>

                        <tr class="	b_li">
                            <td class="b_creater">
                                <span class="b_creater_img"></span>
                                匿名用户
                            </td>
                            <td class="b_optionType"></td>
                            <td class="b_amout">1</td>
                            <td class="b_paidTime">
                                <span>2020-5-20</span><br/>
                                <span>11:14:23</span>
                            </td>
                        </tr>

                        <tr class="	b_li">
                            <td class="b_creater">
                                <span class="b_creater_img"></span>
                                匿名用户
                            </td>
                            <td class="b_optionType"></td>
                            <td class="b_amout">1</td>
                            <td class="b_paidTime">
                                <span>2020-5-20</span><br/>
                                <span>11:14:23</span>
                            </td>
                        </tr>
                        </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <!-- </div> -->
        </div>
    </div>
</div>
<!--底部-->
<div class="footer">
    <div class="ft-con">
        <div class="ft-top">
            <img src="${pageContext.request.contextPath}/resources/img/public/fot-1.jpg">
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
            <p>手机版 | 本站使用<span><img src="${pageContext.request.contextPath}/resources/img/public/ft.jpg"></span>凡科建站搭建
                |
                管理登录</p>
        </div>

    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/resources/js/szh_js/hot.js"></script>

</html>
