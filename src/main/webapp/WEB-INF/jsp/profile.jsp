<!DOCTYPE html>
<html>
<title>用户信息</title>
<meta charset="utf-8">
<link rel="icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link id="skin" rel="stylesheet" href="css/blue.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.cityselect.js"></script>

<script src="js/form_validate.js"></script>
<script src="js/skin.js"></script>
<script src="js/button.js"></script>
<script src="js/wantedType.js"></script>
<style>
	.profile{
        margin: 50px 30px 10px;
    }
	.avatar{
		margin:0 auto;
		text-align: center;
	}
	.avatar + .list-unstyled{
		text-align: center;
	}
	.avatar + .list-unstyled li:first-child{
		margin-bottom:25px;
	}
	.avatar + .list-unstyled li{
		margin-top:5px;
	}
</style>
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
                <img src="img/logo.png" alt="logo"></a>

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
                <li id="blue" title="蓝色" class="selected"></li>
                <li id="purple" title="紫色" class="selected"></li>
                <li id="red" title="红色" class="selected"></li>
                <li id="skyblue" title="天蓝色" class="selected"></li>
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

        <div class="publishContainer">
            <div class="profile">
                <aside class="col-md-3">
					<div class="avatar">
						<img src="img/portrait.gif">
					</div>


                    <ul class="list-unstyled">
                        <li><a href="#" data-toggle="modal" data-target="#changePortrait">修改头像</a></li>
                        <li><a>我的消息</a></li>
                        <li><a>我的帖子</a></li>
                    </ul>
                </aside>
				<div class="col-md-8">
					<form class="form-horizontal" action="">
						<div class="form-group">
							<label class="col-md-3 control-label">昵称：</label>
							<div class="col-md-3">
								<p class="form-control-static">Ellen</p>
							</div>

							<label class="col-md-offset-1 col-md-2 control-label">性别</label>
							<div class="col-md-3">
								<p class="form-control-static">男</p>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">邮箱：</label>
							<div class="col-md-3">
								<p class="form-control-static">18944515@qq.com</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">手机：</label>
							<div class="col-md-3">
								<p class="form-control-static">18944531995</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">院系：</label>
							<div class="col-md-4">
								<p class="form-control-static">软件学院</p>
							</div>
							<div class="col-md-4">
								<p class="form-control-static">软件工程</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">注册时间：</label>
							<div class="col-md-3">
								<p class="form-control-static">2016-03-22</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">上次访问：</label>
							<div class="col-md-3">
								<p class="form-control-static">2016-03-29</p>
							</div>
						</div>
					</form>
				</div>

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
