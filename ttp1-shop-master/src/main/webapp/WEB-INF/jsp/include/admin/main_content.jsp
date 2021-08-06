
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>桌面</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .table th, .table td {
            text-align: center;
            vertical-align: middle!important;
        }
    </style>
</head>
<%--<%
    String osName = System.getProperty("os.name");
    String user = System.getProperty("user.name");
    String version = System.getProperty("java.version");
%>--%>
<body>
<div class="container-fluid">
    <h3>管理员桌面</h3>
    <div class="col-md-10">
        <table class="table table-bordered table-hover">
            <caption><strong>成员信息</strong></caption>
            <tbody>
            <%--<tr>
                <td class="col-md-4">操作系统</td>
                <td><%=osName %></td>
            </tr>
            <tr>
                <td class="col-md-4">服务器名称</td>
                <td><%=request.getServerName() %></td>
            </tr>
            <tr>
                <td class="col-md-4">登录用户</td>
                <td><%=user %></td>
            </tr>--%>
            <tr>
                <td class="col-md-4" style="color: blue">成员班级</td>
                <td class="col-md-4" style="color: blue">成员名字</td>
            </tr>
            <tr>
                <td class="col-md-4">网络5班</td>
                <td class="col-md-4">陈晓怡</td>
            </tr>
            <tr>
                <td class="col-md-4">网络6班</td>
                <td class="col-md-4">柯英怡</td>
            </tr>
            <tr>
                <td class="col-md-4">网络6班</td>
                <td class="col-md-4">梁焱星</td>
            </tr>
            <tr>
                <td class="col-md-4">网络6班</td>
                <td class="col-md-4">雷腾龙</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="col-md-10">
        <h1 style="color: red">注：该后台仅供C组成员内部使用</h1>

    </div>
</div>
</body>
</html>
