<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/10/4
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../js/jquery-easyui-1.7.0/themes/default/easyui.css" rel="stylesheet">
    <link href="../../js/jquery-easyui-1.7.0/themes/icon.css">
    <script src="../../js/jquery-2.0.0.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script src="../../js/jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>
    <link href="../../js/layui/src/css/layui.css" rel="stylesheet">
    <title>Title</title>
</head>
<style type="text/css">
    .mt{
        margin-top: 20px;
    }

</style>
<script>
    function sub() {
        var formData=new FormData($("#form1")[0]);
        $.ajax(
            { url:"../news/save",
                data:formData,
                type: "POST",
                cache:false,
                processData:false,
                contentType:false,
                success:function(data){
                    console.log("ok");


                },
                error:function(data)
                {
                    alert("aa");
                }
            });
    }


</script>
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
            <li class="layui-nav-item"><a href="">发表</a></li>
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

    <div class="layui-body col-md-offset-1 mt" >
        <!-- 内容主体区域 -->
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">基本信息</li>
                <li>编写词条</li>
                <li>确认提交</li>
            </ul>
            <div class="layui-tab-content row">
                <div class="layui-tab-item layui-show">
                    <form class="layui-form" action="">
                        <div class="layui-form-item col-md-4">
                            <label class="layui-form-label ">名称</label>
                            <div class="layui-input-block ">
                                <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item col-md-4">
                            <label class="layui-form-label">国家</label>
                            <div class="layui-input-block">
                                <select name="country" lay-verify="required">
                                    <option value=""></option>
                                    <option value="0">中国</option>
                                    <option value="1">美国</option>
                                    <option value="2">英国</option>
                                    <option value="3">德国</option>
                                    <option value="4">其它</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item col-md-4">
                            <label class="layui-form-label ">类别</label>
                            <div class="layui-input-block  ">
                                <select name="fenlei" lay-verify="required">
                                    <option value=""></option>
                                    <option value="0">奇装异服</option>
                                    <option value="1">节日起源</option>
                                    <option value="2">植物百科</option>
                                    <option value="3">动物百科</option>
                                    <option value="4">微生物百科</option>
                                </select>
                            </div>
                        </div>





                    </form></div>
                <div class="layui-tab-item">
                    <div>
                        <form class="layui-form" action="/news/save" id="form1">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-6">
                                    <label class="layui-form-label">图片</label>
                                    <input type="file" name="file0" id="file0" multiple="multiple"/><br>

                                    <img src="" id="img0" style="width: 100px;height: 100px;">


                                </div>
                                <div class="layui-form-item col-md-4">
                                    <label class="layui-form-label">标题</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="fubiao" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                                    </div>
                                </div>

                                <div class="layui-form-item layui-form-text col-md-4">
                                    <label class="layui-form-label">内容</label>
                                    <div class="layui-input-block">
                                        <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                                    </div>
                                </div>

                                <hr class="layui-bg-green">
                            </div>
                        </form>
                        <button type="button" class="layui-btn" id="add" onclick="sub()">新增词条</button>
                    </div>
                </div>
                <div class="layui-tab-item">内容3</div>
            </div>
        </div>


        <div class="layui-footer">
            <!-- 底部固定区域 -->
            思想之美，因人而彰
        </div>
    </div>
</div>
<script src="../../js/layui/src/layui.js"></script>
<script type="text/javascript">
    $("#file0").change(function(){

        var objUrl = getObjectURL(this.files[0]) ;//获取文件信息

        console.log("objUrl = "+objUrl);

        if (objUrl) {

            $("#img0").attr("src", objUrl);

        }

    }) ;

    function getObjectURL(file) {

        var url = null;

        if (window.createObjectURL!=undefined) {

            url = window.createObjectURL(file) ;

        } else if (window.URL!=undefined) { // mozilla(firefox)

            url = window.URL.createObjectURL(file) ;

        } else if (window.webkitURL!=undefined) { // webkit or chrome

            url = window.webkitURL.createObjectURL(file) ;

        }

        return url ;

    }
</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    layui.use(['element', 'form'], function(){
        var element = layui.element;

        element.on('tab(test)', function(data){
            console.log(this, data);
        });

        element.on('nav(test)', function(elem){
            console.log(elem)
        });

        element.on('collapse(test)', function(data){
            console.log(data);
        });
    });
    layui.use('layedit', function(){
        var layedit = layui.layedit;

        var index = layedit.build('text1', {
            //hideTool: ['image']

            //,tool: []
            //,height: 100
        });


    });
    layui.use(['upload', 'element'], function(){
        var $ = layui.jquery
            ,upload = layui.upload
            ,element = layui.element;

        var uploadInst = upload.render({
            elem: '#bphoto1'
            ,url: 'http://httpbin.org/post'
            //,size: 2000 //限制文件大小，单位 KB
            //,accept: 'file'
            ,method: 'get'
            ,fileAccept: 'image/*'
            ,exts: "jpg|png|gif|bmp|jpeg|pdf"
            ,data: { //额外参数
                a: 1
                ,b: function(){
                    return 2
                }
            }
            ,choose: function(){

            }
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#photo1').attr('src', result); //图片链接（base64）
                });
            }
            ,done: function(res){

                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                console.log(res);
            }
            ,error: function(){
                this.item.html('重选上传');

                //演示失败状态，并实现重传
                var demoText = $('#demoText1');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });

                element.progress('demo1', '0%');
            }
            ,progress: function(n, index, e){
                console.log(n + '%', index, e); //获取进度百分比
                element.progress('demo1', n + '%'); //可配合 layui 进度条元素使用
            }
        });

        //重置上述 upload 实例
        uploadInst.reload({
            name:'avatar'
            ,accept: 'images' //只允许上传图片
            ,acceptMime: 'image/*' //只筛选图片
            //,size: 2
        });
    });
</script>


</body>
</html>
