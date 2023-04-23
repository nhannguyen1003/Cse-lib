<%-- Created by IntelliJ IDEA. User: 君行天下 Date: 2017/7/31 Time: 8:09 To
change this template use File | Settings | File Templates. --%> <%@ page
contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add to读者</title>
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
          <h3 class="panel-title">Add reader</h3>
        </div>
        <div class="panel-body">
          <form action="reader_add_do.html" method="post" id="readeredit">
            <div class="input-group">
              <span class="input-group-addon">Reader ID</span>
              <input
                type="text"
                class="form-control"
                name="readerId"
                id="readerId"
              />
            </div>

            <div class="input-group">
              <span class="input-group-addon">Name</span>
              <input type="text" class="form-control" name="name" id="name" />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Gender</span>
              <input type="text" class="form-control" name="sex" id="sex" />
            </div>
            <div class="input-group">
              <span class="input-group-addon">DoB</span>
              <input type="text" class="form-control" name="birth" id="birth" />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Address</span>
              <input
                type="text"
                class="form-control"
                name="address"
                id="address"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Phone number</span>
              <input
                type="text"
                class="form-control"
                name="telcode"
                id="telcode"
              />
            </div>
            <input
              type="submit"
              value="Add to"
              class="btn btn-success btn-sm"
              class="text-left"
            />
            <script>
              function mySubmit(flag) {
                return flag;
              }
              $("#readeredit").submit(function () {
                if (
                  $("#name").val() == "" ||
                  $("#author").val() == "" ||
                  $("#publish").val() == "" ||
                  $("#isbn").val() == "" ||
                  $("#introduction").val() == "" ||
                  $("#language").val() == "" ||
                  $("#price").val() == "" ||
                  $("#pubdate").val() == "" ||
                  $("#classId").val() == "" ||
                  $("#pressmark").val() == "" ||
                  $("#state").val() == ""
                ) {
                  alert("Please fill in complete reader information!");
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
