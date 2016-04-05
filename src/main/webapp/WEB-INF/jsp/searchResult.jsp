<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String path = request.getContextPath();
%>
<html>
<title>易南开</title>
<meta charset="utf-8">
<link rel="icon" href="<%=path%>/img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
<link rel="stylesheet" href="<%=path%>/css/style.css">
<link id="skin" rel="stylesheet" href="<%=path%>/css/blue.css">
<script src="<%=path%>/js/jquery.js"></script>
<script src="<%=path%>/js/bootstrap.js"></script>
<!-- <script src="js/scroll.js"></script> -->
<script src="<%=path%>/js/skin.js"></script>
<script src="<%=path%>/js/button.js"></script>
<script src="<%=path%>/js/search.js"></script>
</html>

<body>
    <div class="top">
        <div class="menuContainer">
            <div class="menu">
                <span class="dropdown">
                <a href="dropdown-toggle" data-toggle="dropdown">
                    登录
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" data-toggle="modal" data-target="#logModal_stu">学生帐号登录</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#logModal_self">本站独立账号登录</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">QQ登录</a>
                    </li>
                    <li>
                        <a href="#">微博登录</a>
                    </li>

                </ul>

                </span>
                <span>|</span>
                <span>
                <a href="#" data-toggle="modal" data-target="#regModal">注册</a>

            </span>
                <span>我的交易</span>
                <span>我的收藏</span>
                <span>我的信息</span>
            </div>
        </div>
    </div>
    <header>
        <div class="headerContainer">
            <a href="index.html" class="logo">
                <img src="<%=path%>/img/logo.png" alt="logo"></a>

            <div class="searchContainer form-inline">

                <input type="text" placeholder="搜索物品" class="search">
                <button class="searchBtn">搜索商品</button>
                <ul id="hotGoods">
                    <li>军理笔记</li>
                    <li>iPhone</li>
                    <li>iPad</li>
                    <li>书桌</li>
                </ul>
            </div>
            <ul id="skinContainer">
                <li id="blue" title="蓝色" class="selected skinColor"></li>
                <li id="purple" title="紫色" class="skinColor"></li>
                <li id="red" title="红色" class="skinColor"></li>
                <li id="skyblue" title="天蓝色" class="skinColor" ></li>
            </ul>
            <div id="nav" class="mainNav">
                <ul>
                    <li>首页</li>
                    <li>查看需求</li>
                    <li>发布需求</li>
                </ul>
            </div>
        </div>
    </header>
    <div class="contentContainer">
    <div class="content">
        
    
        <div class="searchTitle">
            <h4>
            搜索结果:
            <small id="searchResultTotal">3</small>
            条
        </h4>
        </div> 
        <ul id="searchResult" class="list-group">
            <%-- <li class="list-group-item">
                <a href="detail.html" class='picLink'>
                    <img class="img-responsice img-thumbnail" src="<%=path%>/img/scrollImg/iphone.png">
                </a>
                <span class="searchName">
                    <a href="detail.html">This is some information</a>
                </span>
                <span class="searchOwner">拥有者是Ellen</span>
                <span class="searchPublishDate">发帖时间为2016-3-3</span>
            </li> --%>
            
        </ul>
    </div>
    </div>
    <footer>
        <div class="footerContainer">
            
            <ul>
                <li>友情链接:</li>
                <li>南开BT</li>
                <li>光影传奇</li>
                <li>软件之家</li>
                <li>选课系统</li>
            </ul>
        </div>
    </footer>

</body>