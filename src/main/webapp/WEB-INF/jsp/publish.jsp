<!DOCTYPE html>
<html>
<title>发布需求</title>
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
	.prov, .city{
        width:30%;
        float:left;
        border-radius:4px !important;
    }
	
    #userWantedType{
        width:100%;
    }
    #userWantedType .col-md-4{
        padding-left:0;
    }
    #usedLastTime .col-md-4{
    	padding-left:0;
    }
    .toChange .form-control{
    	width:auto;
    }
    #toChangeType{
    	width:100%;
    }
    .changePar{
    	padding-left:0;
    	display: none;
    }
    .changePar .col-md-4{
    	padding-left: 0;
    	margin-right:20px;
    }
    #publishForm{
    	margin:30px;
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
        	<form action="javascript:void(0);" id="publishForm" class="form-horizontal">
        		<div class="form-group">
                        <label for="userWanted" class="col-md-3 control-label">想要的商品：</label>

                        <div class="col-md-4">
                            
                            <input type="text" id="userWanted" name="userWanted" class="form-control" placeholder="输入你想要的物品的名称">
                        </div>
                </div>
                <div class="form-group">
                	<label for="" class="col-md-3 control-label">所属类别：</label>
                	<div class="col-md-8">
                		<div id="userWantedType" class="input-group">
                                <div class="col-md-4">
                                    <select id="wantedComType" name="wantedComType" class="form-control col-md-3 prov"></select>
                                </div>
                                <div class="col-md-4">
                                    <select id="wantedComCate" name="wantedComCate" class="form-control col-md-3 city"></select>
                                </div>

                        </div>
                	</div>
                </div>
                <div class="form-group">
                	<label for="" class="col-md-3 control-label">使用时长：</label>
                	<div id="usedLastTime" class="col-md-8">
                		<div class="col-md-4">
                		<select name="usedLastTime" class="form-control col-md-3">
                			<option value="1">1个月</option>
                			<option value="2">2个月</option>
                			<option value="3">3个月</option>
                			<option value="6">6个月</option>
                			<option value="9">9个月</option>
                			<option value="12">12个月</option>
                			<option value="18">18个月</option>
                			<option value="24">24个月</option>
                			<option value="0" selected>不限制</option>
                		</select>
                	</div>
                	</div>
                	
                </div>
                <div class="form-group">
                	<label for="" class="col-md-3 control-label">可接受最高价位：</label>
                	<div class="col-md-4">
                		<div class="input-group">
                			<span class="input-group-addon">￥</span>
                			<input id="maxPrice" name="maxPrice" type="text" class="col-md-2 form-control" placeholder="输入价格" autocomplete="off">
                			<span class="input-group-addon">.00</span>
                		</div>
                	</div>
                </div>
				<hr>

                <div class="form-group toChange">
                	<label for="" class="col-md-3 control-label">交换物品(可填)：</label>
                	<div class="col-md-8">
                		<div class="col-md-12 form-group">
	                		
                			<label for="" class="col-md-2 control-label">名称：</label>
                			<input id="changeComName" name="changeComName" type="text" class="col-md-4 form-control" placeholder="输入价格">
	                		
                			
                		</div>
                		<div class="col-md-12 form-group">
                			<label for="" class="col-md-2 control-label">类别：</label>
                			<div class="col-md-10 changePar">
                				<div id="toChangeType" class="input-group">
	                                <div class="col-md-4">
	                                    <select id="changeComType" name="changeComType" class="form-control col-md-6 prov"></select>
	                                </div>
	                                <div class="col-md-4">
	                                    <select id="changeComCate" id="changeComCate" class="form-control col-md-6 city"></select>
	                                </div>

                        		</div>
                			</div>
	                		
                		</div>
						
                	</div>

                </div>
                <hr>
        		<div class="form-group form-button">
                    <button class="btn btn-default col-md-offset-6" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">发布</button>
            	</div>
        	</form>
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