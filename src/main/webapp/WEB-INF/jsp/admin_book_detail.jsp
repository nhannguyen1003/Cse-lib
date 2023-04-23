
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>《 ${detail.name}》</title>
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

<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 10%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="15%">Book title</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>Author</th>
                    <td>${detail.author}</td>
                </tr>
                <tr>
                    <th>Publisher</th>
                    <td>${detail.publish}</td>
                </tr>
                <tr>
                    <th>ISBN</th>
                    <td>${detail.isbn}</td>
                </tr>
                <tr>
                    <th>Introduction</th>
                    <td>${detail.introduction}</td>
                </tr>
                <tr>
                    <th>Language</th>
                    <td>${detail.language}</td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>Publish date</th>
                    <td>${detail.pubdate}</td>
                </tr>
                <tr>
                    <th>Classification ID</th>
                    <td>${detail.classId}</td>
                </tr>
                <tr>
                    <th>Pressmark</th>
                    <td>${detail.pressmark}</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <c:if test="${detail.state==1}">
                        <td>Available</td>
                    </c:if>
                    <c:if test="${detail.state==0}">
                        <td>Unavailable</td>
                    </c:if>

                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
