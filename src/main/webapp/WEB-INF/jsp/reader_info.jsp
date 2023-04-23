<%--
  Created by IntelliJ IDEA.
  User: 君行天下
  Date: 2017/7/31
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${readercard.name} home page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <style>
        body{
            background-color: rgb(240,242,245);
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="background-color:#fff">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="reader_main.html"><p class="text-primary">My library</p></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li >
                    <a href="reader_querybook.html" >
                        Search
                    </a>
                </li>
                <li class="active">
                    <a href="reader_info.html" >
                        Reader information
                    </a>
                </li>
                <li >
                    <a href="mylend.html" >
                        My lend
                    </a>
                </li>
                <li >
                    <a href="reader_repasswd.html" >
                        Reset password
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="reader_info.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${readercard.name},Logged</a></li>
                <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Quit</a></li>
            </ul>
        </div>
    </div>
</nav>
<c:if test="${!empty succ}">
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${succ}
    </div>
</c:if>
<c:if test="${!empty error}">
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${error}
    </div>
</c:if>
<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                My infomation
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="20%">Reader ID</th>
                    <td>${readerinfo.readerId}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>${readerinfo.name}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${readerinfo.sex}</td>
                </tr>
                <tr>
                    <th>DoB</th>
                    <td>${readerinfo.birth}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${readerinfo.address}</td>
                </tr>
                <tr>
                    <th>Phone number</th>
                    <td>${readerinfo.telcode}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <a class="btn btn-success btn-sm" href="reader_info_edit.html" role="button">修改</a>
    </div>
</div>


</body>
</html>
