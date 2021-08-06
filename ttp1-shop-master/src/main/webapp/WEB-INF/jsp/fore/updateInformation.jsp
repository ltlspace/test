<%--
  Created by IntelliJ IDEA.
  User: keyin
  Date: 2020/8/31
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <style>
        body{
            background:url("/images/Information.jpg") no-repeat;
            background-size:cover;
        }
        #btn{
            width:100px;
            height:auto;
            text-align:center;
            font-size:18px;
        }
        table{
            font-size:18px;
        }
        #td1{
            width:10%;
        }
        #td2{
            width:20%;
        }
    </style>


</head>
<body>
<center>
    <form action="">
    <table class="table table-bordered" style="width: 50%; height: auto;">
        <h3><caption><b>修改个人信息</b></caption></h3>

        <tbody>
        <tr>
            <td id="td1">用户名</td>
            <td id="td2"><input type="text" style="width: 100%; height: 100%" id="username"></input></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" style="width: 100%; height: 100%" id="sex"></input></td>
        </tr>
        <tr>
            <td>手机号</td>
            <td><input type="phone" style="width: 100%; height: 100%" id="phone"></input></td>
        </tr>
        <tr>
            <td>地址</td>
            <td><input type="address" style="width: 100%; height: 100%" id="addrress"></input></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="email" style="width: 100%; height: 100%" id="email"></input></td>
        </tr>
        </tbody>
        <tfoot align="center">
        <tr>

            <td colspan="2"><button id="btn" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" >更新提交</button></td>

        </tr>
        </tfoot>

    </table>
    </form>
</center>


</body>
</html>