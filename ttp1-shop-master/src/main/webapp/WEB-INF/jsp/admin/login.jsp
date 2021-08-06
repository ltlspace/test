<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/js/jquery-2.1.1.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <title>商城后台系统登录</title>
    <style type="text/css">
        body{
            background-image:url("/images/001.jpg");
            background-size: 100%;
            margin: 0;
            background-repeat:no-repeat;
            background-attachment:fixed
        }
        h1{margin-left:50px;font-size:30px;font-weight:700;text-shadow:0 1px 4px rgba(0,0,0,.2);color:black}
        .login-box{width:410px;margin:12px auto 0 auto;text-align:center;padding:30px;border-radius:10px;}
       /* .login-box label{display:inline-block;width:100px;text-align:right;vertical-align:middle;color:black}*/
        .login-box img{width:148px;height:42px;border:none}
        input[type=text],input[type=password]{width:270px;height:42px;margin-top:25px;padding:0px 15px;border:1px solid rgba(255,255,255,.15);border-radius:6px;color:black;letter-spacing:2px;font-size:16px;}
        .button22{margin-left:20px;margin-top:50px;cursor:pointer;width:100%;height:44px;padding:0;background:#ef4300;border:1px solid #ff730e;border-radius:6px;font-weight:700;color:#fff;font-size:24px;letter-spacing:15px;text-shadow:0 1px 2px rgba(0,0,0,.1)}
        input:focus{outline:none;box-shadow:0 2px 3px 0 rgba(0,0,0,.1) inset,0 2px 7px 0 rgba(0,0,0,.2)}
        button:hover{box-shadow:0 15px 30px 0 rgba(255,255,255,.15) inset,0 2px 7px 0 rgba(0,0,0,.2)}

        .bottom{margin:8px auto 0 auto;width:100%;position:fixed;text-align:center;bottom:0;left:0;overflow:hidden;padding-bottom:8px;color:#ccc;word-spacing:3px;zoom:1;}
        .div2{
            width: 600px;
            height: 400px;
            border: 2px solid  #B0C4DE;
            background-color: #D4DCF4;
            /*background-color:transparent;*/
            /* for IE */
            filter:alpha(opacity=90);
            /* CSS3 standard cstes*/
            opacity:0.9;
            margin-left: 500px;
            margin-top: 150px;
        }
        .card{
            background: #fff;
            height: 280px;
            width: 300px;
            margin-left: 150px;
            margin-top: 30px;
            position:fixed;
            top:200px;
            right:100px;
        }
        .cardHeader{
            width: 100%;
            height: 45px;
            float: left;
            background-color: #B0C4DE;
            text-align: center;
            color: white;
            font-size: 18px;
            line-height: 55px
        }
        .facebut{
            margin-left:30px;
            margin-top:20px;
            width:80%;
        }
    </style>

</head>

<body>

<div class="div2">
<div class="login-box">
    <h1>商城后台登录系统</h1>
    <form method="post" action="/admin/admin_login">
        <table>
            <tr>
                <th align="center"><font size="4">账号：</font></th>
                <th><input type="text" name="name" id="name" tabindex="1" autocomplete="off" /></th>
            </tr>
            <tr>
                <th><font size="4">密  码：</font></th>
                <th><input type="password" name="password" maxlength="16" id="password" tabindex="2"/></th>
            </tr>
            <tr></tr>
            <tr>
                <th></th>
                <th style='text-align:right'>
                    <button type="button" class="btn btn-link"   data-toggle="modal" data-target="#myModal" >
                    人脸识别登录
                </button>
                </th>
            </tr>
        </table>

        <div class="login">
            <button class="button22" type="submit" tabindex="5"  onClick="adminlogin()">登录</button>
        </div>
    </form>

 </div>
</div>




<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">人脸识别登录</h4>
            </div>
            <div class="modal-body">
            <center>
                <table>
                <tr><video id="video" width="400px" height="400px" ></video></tr>
                    <tr><center>
                        <button class="btn btn-info" id="open">开启摄像头</button>
                        <button class="btn btn-warning" id="close">关闭摄像头</button>
                    </center>
                    </tr>
                </table>
            </center>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="CatchCode">确定人脸识别</button>
            </div>
        </div>
    </div>
</div>
<%--<div class="card">
    <div class="cardHeader ">人脸识别登录</div>
    <button class="facebut" id="open">开启摄像头</button>
    <button class="facebut" id="close">关闭摄像头</button>
    <button class="facebut" id="CatchCode">确定人脸识别</button>

</div>--%>
<div align="center" style="float: left;">
    <video id="video" width="400px" height="400px" autoplay></video>
    <canvas hidden="hidden" id="canvas" width="626" height="800"></canvas>
</div>
<div class="bottom">©2020 Good Shopping 小学期C组后台</div>


</body>
<script type="text/javascript">

    var video;//视频流对象
    var context;//绘制对象
    var canvas;//画布对象
    $(function() {
        var flag = false;
        //开启摄像头
        $("#open").click(function() {
            //判断摄像头是否打开
            if (!flag) {
                //调用摄像头初始化
                open();
                flag = true;
            }
        });
        //关闭摄像头
        $("#close").click(function() {
            //判断摄像头是否打开
            if (flag) {
                video.srcObject.getTracks()[0].stop();
                flag = false;
            }
        });
        //拍照
        $("#CatchCode").click(function() {
            if (flag) {
                context.drawImage(video, 0, 0, 330, 250);
                CatchCode();
            } else
                alert("请先开启摄像头!");
        });
    });
    //将当前图像传输到后台
    function CatchCode() {
        //获取图像
        var img = getBase64();
        //Ajax将Base64字符串传输到后台处理
        $.ajax({
            type : "POST",
            url : "FaceLoginServlet",
            data : {
                img : img
            },
            dataType : "JSON",
            success : function(data) {
                //返回的结果
               // alert(JSON.stringify(data));
                //取出对比结果的返回分数，如果分数90以上就判断识别成功了
                if(parseInt(data.result.user_list[0].score) > 70) {
                    //关闭摄像头
                    video.srcObject.getTracks()[0].stop();
                    //提醒用户识别成功
                    alert("验证成功!");
                    //验证成功跳转页面
                    window.location.href="success";
                }else{
                    alert("验证失败!");
                }
            },
            error : function(q, w, e) {
                alert(q + w + e);
            }
        });
    };
    //开启摄像头
    function open() {
        //获取摄像头对象
        canvas = document.getElementById("canvas");
        context = canvas.getContext("2d");
        //获取视频流
        video = document.getElementById("video");
        var videoObj = {
            "video" : true
        }, errBack = function(error) {
            console.log("Video capture error: ", error.code);
        };
        context.drawImage(video, 0, 0, 330, 250);
        //初始化摄像头参数
        if (navigator.getUserMedia || navigator.webkitGetUserMedia
            || navigator.mozGetUserMedia) {
            navigator.getUserMedia = navigator.getUserMedia
                || navigator.webkitGetUserMedia
                || navigator.mozGetUserMedia;
            navigator.getUserMedia(videoObj, function(stream) {
                video.srcObject = stream;
                video.play();
            }, errBack);
        }
    }
    //将摄像头拍取的图片转换为Base64格式字符串
    function getBase64() {
        //获取当前图像并转换为Base64的字符串
        var imgSrc = canvas.toDataURL("image/png");
        //截取字符串
        return imgSrc.substring(22);
    };
</script>
</html>
