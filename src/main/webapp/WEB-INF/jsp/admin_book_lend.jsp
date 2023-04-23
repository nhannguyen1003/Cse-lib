<%-- Created by IntelliJ IDEA. User: 君行天下 Date: 2017/7/31 Time: 8:09 To
change this template use File | Settings | File Templates. --%> <%@ page
contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Available 《 ${book.name}》</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
      body {
        background-color: rgb(240, 242, 245);
      }
    </style>
  </head>
  <body>
    <nav
      style="position: fixed; z-index: 999; width: 100%; background-color: #fff"
      class="navbar navbar-default"
      role="navigation"
    >
      <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%; margin-right: 1%">
          <a class="navbar-brand" href="admin_main.html"
            >CSE library management</a
          >
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-left">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Book managements
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
            <li>
              <a href="admin_repasswd.html"> Reset password </a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="login.html"
                ><span class="glyphicon glyphicon-user"></span
                >&nbsp;${admin.adminId},Logged</a
              >
            </li>
            <li>
              <a href="logout.html"
                ><span class="glyphicon glyphicon-log-in"></span>&nbsp;Quit</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="col-xs-6 col-md-offset-3" style="position: relative; top: 25%">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Available 《 ${book.name}》</h3>
        </div>
        <div class="panel-body">
          <form
            action="lendbookdo.html?id=${book.bookId}"
            method="post"
            id="lendbook"
          >
            <div class="input-group">
              <span class="input-group-addon">Book title</span>
              <input
                type="text"
                readonly="readonly"
                class="form-control"
                name="name"
                id="name"
                value="${book.name}"
              />
            </div>
            <br />
            <div class="input-group">
              <span class="input-group-addon">Reader ID</span>
              <input
                type="text"
                class="form-control"
                name="readerId"
                id="readerId"
                placeholder="Reader ID number"
              />
            </div>
            <br />
            <input
              type="submit"
              value="确定"
              class="btn btn-success btn-sm"
              class="text-left"
            />
            <script>
              function mySubmit(flag) {
                return flag;
              }
              $("#lendbook").submit(function () {
                if ($("#name").val() == "" || $("#readerId").val() == "") {
                  alert("Please fill in complete book information!");
                  return mySubmit(false);
                }
              });
            </script>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
