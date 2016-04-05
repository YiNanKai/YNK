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
<link rel="stylesheet" href="<%=path%>/css/jquery.jqzoom.css">
<link rel="stylesheet" href="<%=path%>/css/thickbox.css">
<link rel="stylesheet" href="<%=path%>/css/style.css">
<link id="skin" rel="stylesheet" href="<%=path%>/css/blue.css">
<script src="<%=path%>/js/jquery.js"></script>
<script src="<%=path%>/js/jquery-migrate-1.3.0.js"></script>
<script src="<%=path%>/js/jquery.jqzoom-core.js"></script>
<script src="<%=path%>/js/thickbox-compressed.js"></script>

<script src="<%=path%>/js/bootstrap.js"></script>
<script src="<%=path%>/js/skin.js"></script>
<script src="<%=path%>/js/button.js"></script>
<script src="<%=path%>/js/detail.js"></script>

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
                    <li><a href="http://127.0.0.1:8080/graduationdesign/">首页</a></li>
                    <li>查看需求</li>
                    <li>发布需求</li>
                </ul>
            </div>
        </div>
    </header>
    <div class="contentContainer">
        <div class="content">
        
    
        <nav class="panel-group" id="typeNav">
            <h2>商品分类</h2>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a href="#life" data-toggle="collapse" data-parent="#typeNav">生活用品</a>
                    </h4>
                </div>
                <div id="life" class="panel-collapse collapse in">
                    <div class="panel-body">
                        <ul>
                            <li class="hot"><a href="#">书架</a></li>
                            <li><a href="#">台灯</a></li>
                            <li><a href="#">其它</a></li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a href="#books" data-toggle="collapse" data-parent="#typeNav">书刊杂志</a>
                    </h4>
                </div>
                <div id="books" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="list-unstyled">
                            <li class="hot"><a href="#">科学</a></li>
                            <li><a href="#">体育</a></li>
                            <li><a href="#">娱乐</a></li>
                            <li class="hot"><a href="#">笔记</a></li>
                            <li><a href="#">其它</a></li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a href="#electric" data-toggle="collapse" data-parent="#typeNav">电子产品</a>
                    </h4>
                </div>
                <div id="electric" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="#">手机</a></li>
                            <li><a href="#">平板</a></li>
                            <li class="hot"><a href="#">笔记本</a></li>
                            <li><a href="#">其它</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </nav>

        <div class="detailCenter">
            <div class="jqzoomWrap">
                <a href="<%=path%>/img/detailImg/iphone_big.png" class="jqzoom" rel="gall" title="iPhone">
                    <img class="img-responsive" src="<%=path%>/img/detailImg/iphone_small.png" alt="">
                </a>
            </div>
            <span>
                <a title="iphone" id="thickImg" href="<%=path%>/img/detailImg/iphone_big.png" class="thickbox">
                   <img src="<%=path%>/img/look.gif" alt="点击看大图" />
                </a>
            </span>
            <ul class="imgList">
                <li class="imgList_blue">
                    <a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: 'img/detailImg/iphone_small.png',largeimage: 'img/detailImg/iphone_big.png'}">
                        <img src='<%=path%>/img/detailImg/iphone_1.png' alt=""/>
                    </a>
                </li>

            </ul>

        </div>
        <div class="detailInfoContainer">
            <div class="detailInfo">
                <h4 id="detailCommodityName"></h4>
                <ul class="infoList">
                    <li>
                        <span>简介：</span>
                        <span id="detailIntro"></span>
                    </li>
                    <li>
                        <span>拥有者： <a href="#" id="detailOwner"></a></span>
                    </li>
                    <li>
                        <span>想交换的物品：</span>
                        <span id="detailWanted"></span>
                    </li>
                    <li>
                        <span>出售价格：￥</span>
                        <span id="detailPrice"></span>
                    </li>
                    <li>
                        <span>发布时间：</span>
                        <span id="detailPublishDate"></span>
                    </li>
                </ul>
            </div>
            
        </div>
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