<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/core/jsp/taglibs.jsp"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>代理商管理系统</title>
    <link href="${ctx }/css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="${ctx }/css/charisma-app.css" rel="stylesheet">
    <link href='${ctx }/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='${ctx }/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='${ctx }/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='${ctx }/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='${ctx }/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='${ctx }/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='${ctx }/css/jquery.noty.css' rel='stylesheet'>
    <link href='${ctx }/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${ctx }/css/elfinder.min.css' rel='stylesheet'>
    <link href='${ctx }/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${ctx }/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${ctx }/css/uploadify.css' rel='stylesheet'>
    <link href='${ctx }/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="${ctx }/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${ctx }/img/favicon.ico">


    <style type="text/css">
        .bar{ background-color:#5ac0ff; }
        .nav-canvas{filter:alpha(Opacity=80);-moz-opacity:0.5;opacity: 0.5;background-image: url("${ctx }/img/bjtp.png");}
        .clock #Date{font-family:'BebasNeueRegular', Arial, Helvetica, sans-serif;font-size:18px;center;color: white;}
        .time{border: 0;background-color: #00CD00;}
        @-webkit-keyframes mymove{
            0%{opacity:1.0;text-shadow:0 0 20px #00c6ff;}
            50%{opacity:0;text-shadow:none;}
            100%{opacity:1.0;text-shadow:0 0 20px #00c6ff;}
        }


        @-moz-keyframes mymove{
            0%{opacity:1.0;text-shadow:0 0 20px #00c6ff;}
            50%{opacity:0;text-shadow:none;}
            100%{opacity:1.0;text-shadow:0 0 20px #00c6ff;}
        }
        .btn5
        {
            width:330px;
            height:50px;
            font-size:20px;
            border:0;
            background-color:#00BFFF;
            color:#fff;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
        }
        .tab-1{
            font-size: 18px;
        }
        .lf{
            color: white;
        }
    </style>

</head>
<body>

<!-- topbar starts -->
<div class="bar" role="navigation" style="height: 15%">
    <div class="navbar-inner">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="http://klife.yw01.com/index.html" target="view_window">
            <img alt="Charisma Logo" src="${ctx }/img/ksh.png" style="height: 60px; padding-bottom: 0px;padding-top:0px;" />
        </a>
        <!-- user dropdown starts -->
        <div class="btn-group pull-right">
            <img src="${ctx }/img/tx1.png" style="width:40px;heigth:40px"/>&nbsp;&nbsp;<B>HI,${obj.name}</B>
            &nbsp;&nbsp;<font style="color: white;">欢迎登录快生活代理商后台</font>&nbsp;&nbsp;
            <a href="javascript:void(0)" id="login_out" style="text-decoration: none;color:white; ">退出</a>&nbsp;&nbsp;
        </div>
    </div>
</div>
<!-- topbar ends -->
<div class="ch-container">
    <div class="row" >

        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <br/>
                    <div align="center">
                        <img src="${ctx }/img/htgl.png" >
                    </div>
                    <div align="center" class="time">
                        <div class="clock">
                            <br/>
                            <br/>
                            <div id="today"></div>
                            <br/>
                            <font size="30px" color="white"><span id="hours"></span>:<span id="min"></span></font>
                            <br/>
                            <div id="Date"></div>
                            <br/>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div align="center">
                        <ul class="nav nav-pills nav-stacked main-menu">
                            <li><a class="ajax-link" href="${ctx }/wallet/walletList.do"><img src="${ctx }/img/bq.png" >&nbsp;&nbsp;<span class="lf">钱包管理</span></a>
                            </li>
                            <li><a class="ajax-link" href="${ctx }/withdrawals/withdrawals.do"><img src="${ctx }/img/bq.png" >&nbsp;&nbsp;<span class="lf">提现管理</span></a>
                            </li>
                            <li><a class="ajax-link" href="${ctx }/merchant/merchant.do"><img src="${ctx }/img/bq.png" >&nbsp;&nbsp;<span class="lf">商家管理</span></a>
                            </li>
                            <li><a class="ajax-link" href="${ctx }/personal/personal.do"><img src="${ctx }/img/bq.png" >&nbsp;&nbsp;<span class="lf">个人信息</span></a>
                            </li>
                            <li><a class="ajax-link" href="${ctx }/account/account.do"><img src="${ctx }/img/bq.png" >&nbsp;&nbsp;<span class="lf">账号管理</span></a>
                            </li>
                        </ul>
                    </div>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
        <div id="content" class="col-lg-10 col-sm-10">
            <div class="row">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <div align="center">
                    <table class="tab-1">
                        <tr>
                            <td align="right">
                                用户名：
                            </td>
                            <td>
                                ${obj.account}
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                绑定手机为：
                            </td>
                            <td>
                                ${obj.contactPhone}
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                原密码：
                            </td>
                            <td>
                                <input id="oldPwd" type="password" style="width:200px;height:25px;font-size: 15px" placeholder="请输入原密码"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                新密码：
                            </td>
                            <td>
                                <input id="pwd" type="password" style="width:200px;height:25px;font-size: 15px" placeholder="请输入新密码"/>&nbsp;&nbsp;<font size="2px">6-20位字符，可由英文、数字组成，不能包含空格</font>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                重新输入新密码：
                            </td>
                            <td>
                                <input id="newPwd" type="password" style="width:200px;height:25px;font-size: 15px" placeholder="重新输入新密码"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input id="sub" type="submit" name="submit" value="保 存" class="btn5" >
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>提示</h3>
                </div>
                <div class="modal-body">
                    <p id="msg"></p>
                </div>
            </div>
        </div>
    </div>

    <footer class="row" style="height: 10%">
        <div align="center" style="height: 20px">
            <p><a href="http://usman.it" target="_blank">
                Copyright &copy; 深圳市大有汇信息技术有限公司</a> 2015-2018 © All Rights Reserved.粤ICP备15020515号</p>
        </div>
    </footer>
</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="${ctx }/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="${ctx }/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='${ctx }/bower_components/moment/min/moment.min.js'></script>
<script src='${ctx }/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${ctx }/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="${ctx }/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${ctx }/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="${ctx }/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="${ctx }/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="${ctx }/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="${ctx }/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${ctx }/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${ctx }/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${ctx }/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${ctx }/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${ctx }/js/charisma.js"></script>
<script type="text/javascript">
    $(function(){
        $("#login_out").click(function(){
            $.post("${ctx}/login/out.do",
                    function(data){
                        window.location.replace("../index.jsp");
                    },"json");
        });

        $("#sub").click(function(){
            var oldPwd = $("#oldPwd").val();
            var pwd = $("#pwd").val();
            var newPwd = $("#newPwd").val();
            if(validate(oldPwd)){
                $("#msg").html("输入原密码格式有误");
                $('#myModal').modal('show');
                return;
            }
            if(oldPwd.length > 20 || oldPwd.length < 6){
                $("#msg").html("输入原密码长度有误");
                $('#myModal').modal('show');
                return;
            }
            if(validate(pwd)){
                $("#msg").html("输入新密码格式有误");
                $('#myModal').modal('show');
                return;
            }
            if(pwd.length > 20 || pwd.length < 6){
                $("#msg").html("输入新密码长度有误");
                $('#myModal').modal('show');
                return;
            }

            if(validate(newPwd)){
                $("#msg").html("输入重复密码格式有误");
                $('#myModal').modal('show');
                return;
            }
            if(newPwd.length > 20 || newPwd.length < 6){
                $("#msg").html("输入重复密码长度有误");
                $('#myModal').modal('show');
                return;
            }

            if(pwd != newPwd){
                $("#msg").html("两次输入的密码不一致");
                $('#myModal').modal('show');
                return;
            }

            oldPwd = $.trim(oldPwd);
            pwd = $.trim(pwd);

            $.post("${ctx}/account/modPwd.do",{pwd:pwd,oldPwd:oldPwd},
                    function(data){
                        if(data.flag == 1){
                            $("#msg").html("修改成功，跳转登录界面");
                            $('#myModal').modal('show');
                            setTimeout(function(){
                                window.location.replace("../index.jsp");
                            }, 2000);
                        }else{
                            $("#msg").html(data.msg);
                            $('#myModal').modal('show');
                        }
                    },"json");

        });
    });

    //动态数字时钟

    $(document).ready(function() {

        // 创建两个变量，一个数组中的月和日的名称
        var monthNames = [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月" ];
        var dayNames= ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"]

        // 创建一个对象newDate（）
        var newDate = new Date();
        // 提取当前的日期从日期对象
        newDate.setDate(newDate.getDate());
        //输出的日子，日期，月和年
        $('#Date').html(newDate.getFullYear() + "-" + (newDate.getMonth()+1) + "-" + newDate.getDate());
        $('#today').html('<font color="white">'+dayNames[newDate.getDay()]+'</font>')
        setInterval( function() {
            // 创建一个对象，并提取newDate（）在访问者的当前时间的秒
            var seconds = new Date().getSeconds();
            //添加前导零秒值
            $("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
        },1000);

        setInterval( function() {
            // 创建一个对象，并提取newDate（）在访问者的当前时间的分钟
            var minutes = new Date().getMinutes();
            // 添加前导零的分钟值
            $("#min").html(( minutes < 10 ? "0" : "" ) + minutes);
        },1000);

        setInterval( function() {
            // 创建一个对象，并提取newDate（）在访问者的当前时间的小时
            var hours = new Date().getHours();
            // 添加前导零的小时值
            $("#hours").html(( hours < 10 ? "0" : "" ) + hours);
        }, 1000);

    });

    //正则  数字或者英文
    function validate(num){
        if(/^(?=.*[a-z])[a-z0-9]+/ig.test(num)){
            return false;
        }else{
            return true;
        }
    }

</script>
</body>
</html>
    