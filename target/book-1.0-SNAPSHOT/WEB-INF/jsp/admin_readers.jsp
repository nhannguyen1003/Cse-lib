<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All readers</title>
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
<c:if test="${!empty info}">
    <script>alert("${info}");window.location.href="allreaders.html"</script>
</c:if>
<nav  style="position:fixed;z-index: 999;width: 100%;background-color: #fff" class="navbar navbar-default" role="navigation" >
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html">CSE library management</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        CSE library management
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allbooks.html">All books</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">Add books</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Reader management
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">All readers</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">Add readers</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Book Lending managements
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">Reader Log</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" >
                        Reset password
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${admin.adminId},Logged</a></li>
                <li><a href="logout.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Quit</a></li>
            </ul>
        </div>
    </div>
</nav>
<div style="position: relative;top: 15%">
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
</div>


<div class="panel panel-default" style="position:relative;top: 80px;width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            All readers
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover" >
            <thead>
            <tr>
                <th>Reader ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>DoB</th>
                <th>Address</th>
                <th>Phone number</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${readers}" var="reader">
                <tr>
                    <td><c:out value="${reader.readerId}"></c:out></td>
                    <td><c:out value="${reader.name}"></c:out></td>
                    <td><c:out value="${reader.sex}"></c:out></td>
                    <td><c:out value="${reader.birth}"></c:out></td>
                    <td><c:out value="${reader.address}"></c:out></td>
                    <td><c:out value="${reader.telcode}"></c:out></td>
                    <td><a href="reader_edit.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-info btn-xs">Edit</button></a></td>
                    <td><a href="reader_delete.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-danger btn-xs">Delete</button></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
