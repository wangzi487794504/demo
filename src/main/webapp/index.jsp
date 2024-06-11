<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="js/jquery-easyui-1.7.0/themes/default/easyui.css" rel="stylesheet">
    <link href="js/jquery-easyui-1.7.0/themes/icon.css">
    <script src="js/jquery-2.0.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script src="js/jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>
    <link href="js/layui/src/css/layui.css" rel="stylesheet">
    <title>Title</title>
</head>
<style type="text/css">
    .zijie-1{
        border: solid;

        border-color: gray;;
    }

</style>
<!--<script>-->
<!--    $(function () {-->
<!--        $.ajax(-->
<!--            { url:"jieshou",-->
<!--                data:{"usename":"root","password":"123456"},-->
<!--                type: "POST",-->
<!--                success:function(data){-->
<!--                    $("#error").css("background-color","green");-->
<!--                    $("#error").text("连接成功");-->


<!--                },-->
<!--                error:function(data)-->
<!--                {-->
<!--                    $("#error").css("background-color","red");-->
<!--                    $("#error").text("500，服务器内部异常");-->
<!--                },-->
<!--                datatype:"text"-->
<!--            });-->
<!--    });-->
<!--</script>-->
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">始于文字，不止于文字</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">中国</a></li>
            <li class="layui-nav-item"><a href="">美国</a></li>
            <li class="layui-nav-item"><a href="">英国</a></li>
            <li class="layui-nav-item"><a href="">法国</a></li>
            <li class="layui-nav-item"><a href="">德国</a></li>
            <li class="layui-nav-item"><a href="">其它</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="/WEB-INF/pages/fabiao.jsp">发表</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    登录
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文学著作</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">奇装异服</a></dd>
                        <dd><a href="javascript:;">明星网红</a></dd>
                        <dd><a href="javascript:;">历史人物</a></dd>
                        <dd><a href="">节日起源</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">百科全书</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">植物百科</a></dd>
                        <dd><a href="javascript:;">动物百科</a></dd>
                        <dd><a href="">微生物百科</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">经典战役</a></li>
                <li class="layui-nav-item"><a href="">饮食风俗</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">qq<a href="/news/save">aa</a></div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="js/layui/src/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>