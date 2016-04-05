<!DOCTYPE html>
<html>
<title>易南开</title>
<meta charset="utf-8">
<link rel="icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link id="skin" rel="stylesheet" href="css/blue.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/bootstrap-maxlength.js"></script>

<script src="js/rankList.js"></script>
<script src="js/news.js"></script>
<script src="js/scroll.js"></script>
<script src="js/skin.js"></script>
<script src="js/button.js"></script>
<script src="js/form_validate.js"></script>

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
                        <a href="#" data-toggle="modal" data-target="#logModal">本站帐号登录</a>
                    </li>
                    <!--<li>-->
                    <!--<a href="#" data-toggle="modal" data-target="#logModal_self">本站独立账号登录</a>-->
                    <!--</li>-->
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
                <a href="user/registerpage.htm">注册</a>

            </span>
            <span><a href="#">我的交易</a></span>
            <span><a href="#">我的收藏</a></span>
            <span><a href="#">我的信息</a></span>
        </div>
    </div>
</div>
<header>
    <div class="headerContainer">
        <a href="index.html" class="logo">
            <img src="img/logo.png" alt="logo"></a>

        <div class="searchContainer form-inline">

            <input type="text" placeholder="搜索物品" class="search">
            <button class="searchBtn">搜索商品</button>
            <ul id="hotGoods">
                <li>热搜:</li>
                <li><a href="#">军理笔记</a></li>
                <li><a href="#">iPhone</a></li>
                <li><a href="#">iPad</a></li>
                <li><a href="#">书桌</a></li>
            </ul>
        </div>
        <ul id="skinContainer">
            <li id="blue" title="蓝色" class="skinColor"></li>
            <li id="purple" title="紫色" class="skinColor"></li>
            <li id="red" title="红色" class="skinColor"></li>
            <li id="skyblue" title="天蓝色" class="skinColor"></li>
        </ul>
        <div id="nav" class="mainNav">
            <ul>
                <li><a href="http://127.0.0.1:8080/graduationdesign/">首页</a></li>
                <li>查看需求</li>
                <li>发布需求</li>
                <li><a href="http://127.0.0.1:8080/graduationdesign/commodity/detail.htm">详情</a></li>
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
        <div class="scrollImg">
            <div class="imgContainer">
                <div class="img_list">
                    <ul>
                        <li>
                            <img src="img/scrollImg/ipad.png"></li>
                        <li>
                            <img src="img/scrollImg/iphone.png"></li>
                        <li>
                            <img src="img/scrollImg/javascript.png"></li>
                        <li>
                            <img src="img/scrollImg/html.png"></li>
                    </ul>
                </div>
            </div>
            <div class="hint">
                <a href="#">
                    iPad也能交换啦
                </a>
                <a href="#">
                    iPhone也能交换啦
                </a>
                <a href="#">
                    学习JS就靠它了
                </a>
                <a href="#">
                    学会html
                </a>
            </div>
        </div>

        <div class="news">
            <div>最新动态</div>
            <ul>
                <!-- <li>
                    <b>[活动]</b>
                    <a href="#">动态111</a>
                </li> -->
                <!-- 放置最新动态 -->
            </ul>
        </div>
        <div class="rank">
            <div>排行榜</div>
            <ol>
                <!-- <li>
                    <span class="rankPos"></span>
                    <img class="img-responsive" src="img/scrollImg/iphone.png">
                    <span class="rankInfo"></span>
                    <span class="viewsCount"></span>
                </li> -->
                <!-- 存放排行榜 -->
            </ol>
        </div>
    </div>
</div>
<footer>
    <div class="footerContainer">
        <ul>
            <li>友情链接:</li>
            <li><a href="#">南开BT</a></li>
            <li><a href="#">光影传奇</a></li>
            <li><a href="#">软件之家</a></li>
            <li><a href="#">选课系统</a></li>
        </ul>
    </div>
</footer>

<!--登录窗口 start-->
<div class="modal fade" id="logModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true"
     data-backdrop="false" data-keyboard="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span>
                </button>

                <h3>请使用本站帐号登录</h3>
                <blockquote>
                    <p>第一次使用本站请先<a href="register_ok.html">注册</a></p>
                </blockquote>
            </div>
            <div class="modal-body">
                <form id="logForm" class="form-horizontal" action="">
                    <div class="form-group">
                        <label for="userName" class="col-md-2 control-label">用户名</label>

                        <div class="col-md-10">
                            <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </span>
                                <input type="text" id="userName" name="userName" class="form-control" placeholder="注册用户名/邮箱/手机号码"></div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="userPwd" class="col-md-2 control-label">密码</label>

                        <div class="col-md-10">
                            <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>
                                <input type="password" id="userPwd" name="userPwd" class="form-control" placeholder="输入密码"></div>
                        </div>
                    </div>

                    <div class="form-group form-button">
                        <button class="btn btn-default col-md-offset-9" data-dismiss="modal">取消</button>
                        <button type="submit" class="btn btn-primary">登录</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!--登录窗口 end-->

</body>
