<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
String path = request.getContextPath();
%>
<head>
    <meta charset="UTF-8">
    <title>注册新用户</title>
    <link rel="icon" href="<%=path%>/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.css">

    <script src="<%=path%>/js/jquery.js"></script>
    <script src="<%=path%>/js/bootstrap.js"></script>
    <script src="<%=path%>/js/jquery.validate.js"></script>
    <script src="<%=path%>/js/jquery.form.js"></script>
    <script src="<%=path%>/js/jquery.cityselect.js"></script>
    <script src="<%=path%>/js/bootstrap-maxlength.js"></script>
    
    <script language="javascript" src="<%=path%>/js/JTimer_1.3.js"></script>  
    <script src="<%=path%>/js/college.js"></script>
    <script src="<%=path%>/js/form_validate.js"></script>
    <script src="<%=path%>/js/submitData.js"></script>
    <style>
        .container {
            padding-top: 70px;
            width: 900px;
        }

        .tab-content {
            padding-top: 30px;
            border: 1px solid #ddd;
            border-top-color: #fff;
        }
        .form-button{
            position: relative;
            left:22px;
        }
        #page3{
            margin:40px 100px;
        }
        .prov, .city{
            width:30%;
            float:left;
            border-radius:4px !important;
        }
        #col_and_maj{
            width:100%;
        }
        #col_and_maj .col-md-4{
            padding-left:0;
        }
    </style>
</head>

<body>
    <div class="container">
        <ul class="nav nav-tabs nav-justified">
            <li class="active disabled"><a href="#page1" data-toggle="tab">1. 验证学号</a></li>
            <li class="disabled"><a href="#page2" data-toggle="tab">2. 完善个人信息</a></li>
            <li class="disabled"><a href="#page3" data-toggle="tab">3. 注册成功</a></li>
        </ul>
        <div class="tab-content">

            <div class="tab-pane fade in active" id="page1">
                <form id="regForm" class="form-horizontal" action="javascript:alert('正在验证');">
                    <div class="form-group">
                        <label for="new_stuID" class="col-md-2 control-label">注册学号</label>

                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user"></span>
                                </span>
                                <input type="text" id="new_stuID" name="new_stuID" class="form-control required" placeholder="请输入学号">
                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_stuPwd" class="col-md-2 control-label">新密码</label>

                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock"></span>
                                </span>
                                <input type="password" id="new_stuPwd" name="new_stuPwd" class="form-control" placeholder="请输入密码">
                            </div>
                        </div>
                    </div>


                    <div class="form-group form-button">
                        <button type="reset" class="btn btn-default col-md-offset-8">重置</button>
                        <button id="regFormSubmit" type="submit" class="btn btn-primary">注册</button>
                    </div>

                </form>
            </div>

            <div class="tab-pane fade" id="page2">
                <form class="form-horizontal" id="fillForm" action="javascript:void(0);">
                    <div class="form-group">
                        <label for="new_userName" class="col-md-2 control-label">昵称</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </span>
                                <input type="text" id="new_userName" name="new_userName" class="form-control" placeholder="输入新昵称(昵称确认后不可更改，4-10个字符)">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_userPwd" class="col-md-2 control-label">密码</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </span>
                                <input type="password" id="new_userPwd" name="new_userPwd" class="form-control" placeholder="输入密码(5-15个字符)"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_userPwd_twice" class="col-md-2 control-label">确认密码</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </span>
                                <input type="password" id="new_userPwd_twice" name="new_userPwd_twice" class="form-control" placeholder="请再次输入密码"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_userEmail" class="control-label col-md-2">邮箱</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input id="new_userEmail" name="new_userEmail" type="email" class="form-control" placeholder="输入个人邮箱"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_userPhone" class="control-label col-md-2">手机</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-phone"></span>
                                </span>
                                <input type="text" id="new_userPhone" name="new_userPhone" class="form-control" placeholder="输入个人手机号"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_userBirth" class="control-label col-md-2">生日</label>
                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                <input id="new_userBirth" name="new_userBirth" class="form-control" placeholder="选择您的生日(1960~2012)" readonly />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-2">性别</label>
                        <div class="radio col-md-8">
                            <label class="col-md-2">
                                <input type="radio" name="new_userGender" id="man" value="man">
                                男
                            </label>
                            <label class="col-md-2">
                                <input type="radio" name="new_userGender" id="woman" value="woman">
                                女
                            </label>
                            <label class="col-md-2">
                                <input type="radio" name="new_userGender" id="secret" value="secret" checked>
                                保密
                            </label>
                        </div>

                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-2">院系</label>
                        <div class="col-md-8">
                            <div id="col_and_maj" class="input-group">
                                <div class="col-md-4">
                                    <select id="new_userCollege" name="new_userCollege" class="form-control col-md-3 prov"></select>
                                </div>
                                <div class="col-md-4">
                                    <select id="new_userMajor" name="new_userMajor" class="form-control col-md-3 city"></select>
                                </div>

                            </div>

                        </div>
                    </div>



                    <div class="form-group form-button">
                        <button type="reset" class="btn btn-default col-md-offset-8">重置</button>
                        <button id="fillFormSubmit" type="submit" class="btn btn-primary">确认</button>
                    </div>
                </form>
            </div>
            <div class="tab-pane fade" id="page3">

                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div>
                            <h3 class="glyphicon glyphicon-ok">      注册成功</h3>

                        </div>
                    </div>
                    <div class="panel-body">
                        <h4>
                            <a href="#" data-toggle="modal" data-target="#logModal_in_reg">现在登录</a>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--登录窗口 start-->
<div class="modal fade" id="logModal_in_reg" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true"
     data-backdrop="false" data-keyboard="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span>
                </button>

                <h3>请使用本站帐号登录</h3>
            </div>
            <div class="modal-body">
                <form id="logForm" class="form-horizontal" action="javascript:void(0);">
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
<!--logModal_self end-->
</body>

</html>
