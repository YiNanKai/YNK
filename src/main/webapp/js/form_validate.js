$(function () {

    jQuery.validator.addMethod("regUserName", function (value, element) {

        //return this.optional(element) || /^[0-9]*[a-zA-Z_\u4e00-\u9fa5]+[0-9]*$/.test(value);
    	var isOK = /^[0-9a-zA-Z_\u4e00-\u9fa5]*$/;
        var isNum = /^\d+$/;
        if(isNum.test(value)){
            return false;
        }
        return this.optional(element) || isOK.test(value);
    }, "注册昵称为4-10位数字、下划线、中文或英文字母，但不能全是数字");

    jQuery.validator.addMethod("isMobile", function(value, element) {

        var length = value.length;

        var mobile = /^((\(\d{2,3}\))|(\d{3}\-))?1[3,8,5]{1}\d{9}$/;

        return this.optional(element) || (length == 11 && mobile.test(value));

    }, "请正确填写您的手机号码");

    //登录帐号合法性验证
//    jQuery.validator.addMethod("logAccountCheck", function (value, element) {
//
//        var length = value.length;
//
//        var mobile = /^((\(\d{2,3}\))|(\d{3}\-))?1[3,8,5]{1}\d{9}$/;
//
//        return this.optional(element) || (length == 11 && mobile.test(value)) || /^[\u0391-\uFFE5\w]+$/.test(value);
//
//    }, "昵称不符合登录规则");

    //
    $("textarea#new_signature").maxlength({
        threshold: 20,
        alwaysShow: true
    });

//    $("#col_and_maj").citySelect({
//        url: {
//            "citylist": [
//                {"p": "计控", "c": [{"n": "计算机科学与技术"}, {"n": "信息安全"}, {"n": "自动化"}, {"n": "智能科学与技术"}, {"n": "物联网工程"}]},
//                {"p": "历史学院", "c": [{"n": "中国史学系"}, {"n": "世界史学系"}, {"n": "考古学与博物馆学系"}]},
//                {
//                    "p": "数学学院",
//                    "c": [{"n": "数学系"}, {"n": "应用数学系"}, {"n": "信息与概率系"}, {"n": "统计系"}, {"n": "科学与工程计算系"}, {"n": "数理金融与精算科学系"}, {"n": "高等数学教学部"}]
//                },
//                {
//                    "p": "商学院",
//                    "c": [{"n": "企业管理系"}, {"n": "会计学系"}, {"n": "市场营销系"}, {"n": "财务管理系"}, {"n": "人力资源管理系"}, {"n": "管理科学与工程系"}, {"n": "信息资源管理系"}]
//                }
//            ]
//        },
//        prov: "",
//        city: "",
//        dist: "",
//        nodata: "none"
//
//    });

    var url = 'http://chaxun.1616.net/s.php?type=ip&output=json&callback=?&_=' + Math.random();
    $.getJSON(url, function (data) {
        ip = data.Ip;
    });
    var studentId;
    $(".disabled").click(function () {

        return false;
    });


    


    //本站独立帐号登录验证
    $("#logForm").validate({
        errorElement: 'span',
        errorClass: 'help-block',
        focusInvalid: false,
        rules: {
            userName: {
                required: true
                //logAccountCheck: true
            },
            userPwd: {
                required: true
            }
        },
        messages: {
            userName: {
                required: '此项不能为空'
                
            },
            userPwd: {
                required: '密码不能为空'
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        success: function (label) {
            label.closest('.form-group').removeClass('has-error').addClass('has-success');
            label.remove();
        },
        errorPlacement: function (error, element) {
            element.parent('div').after(error);
        },
      //本站独立帐号登录验证
        submitHandler: function (form) {
        	var userName = $("#userName").val();
        	var result = {
                    "userName": userName,
                    "userPwd": $("#userPwd").val()
                };
        	console.log(userName);
        	var mobile = /^((\(\d{2,3}\))|(\d{3}\-))?1[3,8,5]{1}\d{9}$/;
        	var email = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        	if(mobile.test(userName)){
        		console.log("userName is phone number");
        		result.userType = "phone";
        		
        	}else if(email.test(userName)){
        		console.log("userName is email ");
        		
        		result.userType = "email";
        	}else{
        		console.log("userName is nickname");
        		result.userType = "nickname";
        	}
        	
                var res = JSON.stringify(result);
                alert(res);
                //$("a[href='#page2']").parent().addClass("active").siblings().removeClass("active");
                //$("#page2").addClass("in active").siblings().removeClass("in active");
                console.log('ok');
                $.post("user/login.htm", {loginData: res}, function (data) {
                    console.log(data);
                    if(data === 'true'){
                    	alert("登陆成功");
                    	window.location = 'user/index.htm';
                    }else{
                    	alert("密码错误或用户名不正确，登录失败");
                    }
                 });
                return false;
        }
    });

  //学号注册表单验证
    $("#regForm").validate({
        errorElement: 'span',
        debug: true,
        errorClass: 'help-block',
        focusInvalid: false,
        rules: {
            new_stuID: {
                required: true,
                digits: true,
                maxlength: 7,
                minlength: 7,
                remote:{
                    url: 'checkstudentid.htm',
                    type:'post',
                    data:{
                        new_stuID:function(){
                            return $("#new_stuID").val();
                        }
                    }
                }
            },
            new_stuPwd: {
                required: true,
                digits: true,
                minlength: 6,
                maxlength: 6
            }
        },
        messages: {
            new_stuID: {
                required: '学号不能为空',
                digits: '学号必须是数字',
                maxlength: '学号必须为7位',
                minlength: '学号必须为7位',
                remote:'学号已被注册或不存在'

            },
            new_stuPwd: {
                required: '密码不能为空',
                digits: '学号必须是数字',
                minlength: '默认密码为身份证后6位',
                maxlength: '默认密码为身份证后6位'
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        success: function (label) {
            label.closest('.form-group').removeClass('has-error').addClass('has-success');
            label.remove();
        },
        errorPlacement: function (error, element) {
            element.parent('div').after(error);
        },

        submitHandler: function (form) {
        	studentId= $("#new_stuID").val();
            var result = {
                "new_stuID": $("#new_stuID").val(),
                "new_stuPwd": $("#new_stuPwd").val()
            };
            var res = JSON.stringify(result);
            alert(res);
            $("a[href='#page2']").parent().addClass("active").siblings().removeClass("active");
            $("#page2").addClass("in active").siblings().removeClass("in active");
            console.log('ok');
//             $.post("post.html", {regFormData: res}, function (data) {
//                 console.log(data);
//             });
            return false;
        }

    });

    //完善个人信息表单验证
    $("#fillForm").validate({
        errorElement: 'span',
        errorClass: 'help-block',
        focusInvalid: false,
        rules: {
            new_userName: {
                required: true,
                regUserName: true,
                minlength: 4,
                maxlength: 10,
                remote:{
                    url: 'checknewusername.htm',
                    type:'post',
                    data:{
                        new_userName:function(){
                            return $("#new_userName").val();
                        }
                    }
                }
            },
            new_userPwd: {
                required: true,
                rangelength: [5, 15]
            },
            new_userPwd_twice: {
                required: true,
                equalTo: "#new_userPwd"
            },
            new_userEmail: {
                required: true,
                email: true,
                remote:{
                    url: 'checknewuseremail.htm',
                    type:'post',
                    data:{
                        new_userEmail:function(){
                            return $("#new_userEmail").val();
                        }
                    }
                }
            },
            new_userPhone: {
                required: true,
                isMobile:true,
                digits: true,
                minlength: 11,
                maxlength: 11,
                remote:{
                    url: 'checknewuserphone.htm',
                    type:'post',
                    data:{
                        new_userPhone:function(){
                            return $("#new_userPhone").val();
                        }
                    }
                }
            },
            new_userBirth: {
                required: true
            },
            new_userCollege: {
                required: true
            },
            new_userMajor: {
                required: true
            }
        },
        messages: {
            new_userName: {
                required: '昵称不能为空',
                minlength: '昵称最少为4位',
                maxlength: '昵称最多为10位',
                remote:'昵称已被占用'
            },
            new_userPwd: {
                required: '密码不能为空',
                rangelength: $.validator.format("密码长度必须在 {0} 到 {1} 之间")
            },
            new_userPwd_twice: {
                required: '此项不能为空',
                equalTo: '两次输入的密码必须一致'
            },
            new_userEmail: {
                required: '邮箱不能为空',
                email: '邮箱格式不正确(例如: xxx@xx.com)',
                remote:'邮箱已被注册'
            },
            new_userPhone: {
                required: '电话号不能为空',
                digits: '电话号必须是数字',
                minlength: '电话号为11位',
                maxlength: '电话号为11位',
                remote:'手机号已被注册'
            },
            new_userBirth: {
                required: '生日不能为空'
            },
            new_userCollege: {
                required: '学院不能为空'
            },
            new_userMajor: {
                required: '专业不能为空'
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        success: function (label) {
            label.closest('.form-group').removeClass('has-error').addClass('has-success');
            label.remove();
        },
        errorPlacement: function (error, element) {
            element.parent('div').after(error);
        },

        submitHandler: function (form) {
            //var ip;
            //获取IP地址
        	console.log(studentId);

            var result = {
            	"new_studentId":studentId,
                "new_userName": $("#new_userName").val(),
                "new_userPwd": $("#new_userPwd").val(),
                "new_userEmail": $("#new_userEmail").val(),
                "new_userPhone": $("#new_userPhone").val(),
                "new_userBirth": $("#new_userBirth").val(),
                "new_userGender": $("input[name='new_userGender']:checked").val(),
                "new_userCollege": $("#new_userCollege").val() + ',' + $("#new_userMajor").val()
            };
            result.new_userIP = ip;
            var res = JSON.stringify(result);
            console.log(res);
            
            $.post("register.htm", {fillFormData: res}, function (data) {
                 console.log(data);
                 if(data === 'true'){
                	 $("a[href='#page3']").parent().addClass("active").siblings().removeClass("active");
                     $("#page3").addClass("in active").siblings().removeClass("in active");
                 }else{
                	 alert("完善信息错误");
                 }
            });

            
            //return false;
        }
    })
})
