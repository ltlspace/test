<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<style type="text/css">
    .qwe {
        background-color: lightgray;
        width: 400px;
        margin: 50px auto;
        padding: 1px;
        height: 40px;
        display: block;
    }

    .qwe input {
        width: 280px;
        border: 1px solid transparent;
        height: 36px;
        margin: 1px;
        outline:none;
    }

    .qwe button {
        width: 110px;
        border: 1px solid transparent;
        background-color: lightgray;
        color: white;
        font-size: 20px;
        font-weight: bold;
    }

    .asd span {
        color: #999;
    }

    .asd {
        margin-top: 3px;
        margin-left: -20px;
    }

    .asd a {
        padding: 0px 20px 0px 20px;
        font-size: 14px;
    }

</style>
<link rel="stylesheet" href="/css/forehome/style.css" />

<nav class="top ">
    <a href="/fore/foreHome">
        <span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
        商城首页
    </a>

    <c:if test="${!empty user}">
        <a href="/fore/information">${user.name}</a>
        <a href="/fore/forelogout">退出</a>
    </c:if>

    <c:if test="${empty user}">
        <a href="Login">请登录</a>
        <a href="Login">免费注册</a>
    </c:if>

    <span class="pull-right">
                <a href="forebought">我的订单</a>
                <a href="forecart">
                <span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
                购物车<strong>${cartTotalItemNumber}</strong>件</a>
        </span>
</nav>
<br>
<form action="foresearch" method="post" >

    <div class="qwe">
        <input name="keyword" type="text" >
        <button  type="submit" class="searchButton">搜索</button>
        <div class="asd" style="margin-top: 3px; margin-left: -20px;"  >
            <c:forEach items="${categories}" var="c" varStatus="st">
                <c:if test="${st.count>=2 and st.count<=5}">
                            <span style="width: 106px; height: 14px;">
                                <a href="forecategory?cid=${c.id}" style="color: lightgray ;font-size:14px; padding: 0px 20px 0px 20px; width: 100px; height: 16px;" >
                                        ${c.name}
                                </a>
                                <c:if test="${st.count!=5}">
                                    <span >|</span>
                                </c:if>
                            </span>
                </c:if>
            </c:forEach>
        </div>

    </div>
</form>
