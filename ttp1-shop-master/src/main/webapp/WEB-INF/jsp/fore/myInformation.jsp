<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息查看</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<style>
    table{
        width:20%;
        text-align:center;
        font-size: 16px;
    }
    body{
      background: url("/images/Information.jpg") no-repeat;
        background-size: cover;
    }
    #btn,#btn2{
        text-align: right;
    }

    #text1{
        text-align: left;
    }
</style>
<body >

    <%--<div style="text-align: center">
        <h1>我的信息</h1>

        <form>
             <tr> 用户名:   ${user.name} </tr>     <br>
             <tr> 性  别:     ${user.sex}  </tr>       <br>
             <tr> 手机号:   ${user.telephone} </tr>         <br>
             <tr>地  址:     ${user.address}</tr>      <br>
             <tr>邮  箱:     ${user.email}</tr>        <br>
             <tr>积分等级: ${user.credit.name}</tr>      <br>
             <tr>积分数量: ${user.credit.number}</tr>    <br>

    </form>
    </div>--%>
<center>
        <table class="table table-bordered" style="width: 50%; height: auto;">


              <h3>  <td id="text1"><b>个人信息</b> </td></h3>
              <td id="btn"> <button  class="btn btn-primary btn-sm"   data-toggle="modal" data-target="#myModal" >修改个人信息</button>
                  <button  class="btn btn-primary btn-sm"  onclick="javascript:history.back(-1)">返回</button></td>


            <tbody>
                <tr>
                    <td> <span class="glyphicon glyphicon-user"></span>&nbsp;用户名</td>
                    <td>${user.name}</td>
                </tr>

                <tr>
                    <td> <i class="fa fa-intersex" ></i>&nbsp;性别</td>
                    <td>${user.sex}</td>
                </tr>
                <tr>
                    <td> <span class="glyphicon glyphicon-phone"></span>&nbsp;手机号</td>
                    <td>${user.telephone}</td>
                </tr>
                <tr>
                    <td><span class="glyphicon glyphicon-home"></span>&nbsp;地址</td>
                    <td>${user.address}</td>
                </tr>
                <tr>
                    <td><span class="glyphicon glyphicon-envelope"></span>&nbsp;邮箱</td>
                    <td>${user.email}</td>
                </tr>
                <tr>
                    <td>积分等级</td>
                    <td>${user.credit.name}</td>
                </tr>
            <tr>
                <td>积分数量</td>
                <td>${user.credit.number}</td>
            </tr>
            </tbody>
        </table>
</center>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        修改个人信息
                    </h4>
                </div>
                <form action="user_update" method="post">
                <div class="modal-body">

                    <table class="table table-bordered">
                        <tr>
                            <td> <span class="glyphicon glyphicon-user"></span>用户名</td>
                              <td> <input type="text" name="name" placeholder="${user.name}"></input></td>
                        </tr>
                        <tr>
                            <td>  <i class="fa fa-intersex" ></i>&nbsp;性别</td>
                            <td>   <input type="text" name="sex" placeholder="${user.sex}"></input></td>
                        </tr>
                        <tr>
                            <td>  <span class="glyphicon glyphicon-phone"></span>手机号</td>
                            <td>  <input type="text" name="telephone" placeholder="${user.telephone}"></input><br></td>
                        </tr>
                        <tr>
                            <td> <span class="glyphicon glyphicon-home"></span>地址</td>
                            <td>  <input type="text" name="address" placeholder="${user.address}"></input><br></td>
                        </tr>
                        <tr>
                            <td> <span class="glyphicon glyphicon-envelope"></span>&nbsp;邮箱</td>
                            <td> <input type="text" name="email" placeholder="${user.email}"></input><br></td>
                        </tr>
                        <tr>
                          <td colspan="2">  <input type="hidden" name="id" value="${user.id}"><button type="submit" class="btn btn-success">
                            提交更改
                    </button></td>
                        </tr>

                    </table>

                </div>
                </form>

            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <%--<script>
        function jump(){
            window.location.href='http://localhost:8088/fore/Informatino.jsp';
        }
    </script>--%>


</body>
</html>
