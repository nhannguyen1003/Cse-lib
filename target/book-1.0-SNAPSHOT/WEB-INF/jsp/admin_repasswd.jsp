<%-- Created by IntelliJ IDEA. User: 君行天下 Date: 2017/8/3 Time: 10:42 To
change this template use File | Settings | File Templates. --%> <%@ page
contentType="text/html;charset=UTF-8" language="java" %> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>更改密码</title>
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
    <div style="position: relative; top: 15%">
      <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
          <button
            type="button"
            class="close"
            data-dismiss="alert"
            aria-hidden="true"
          >
            &times;
          </button>
          ${succ}
        </div>
      </c:if>
      <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
          <button
            type="button"
            class="close"
            data-dismiss="alert"
            aria-hidden="true"
          >
            &times;
          </button>
          ${error}
        </div>
      </c:if>
    </div>
    <div class="col-xs-6 col-md-offset-3" style="position: relative; top: 25%">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Reset password</h3>
        </div>
        <div class="panel-body">
          <form
            method="post"
            action="admin_repasswd_do"
            class="form-inline"
            id="repasswd"
          >
            <div class="input-group">
              <input
                type="password"
                id="oldPasswd"
                name="oldPasswd"
                placeholder="Enter old password"
                class="form-control"
                class="form-control"
              />
              <input
                type="password"
                id="newPasswd"
                name="newPasswd"
                placeholder="Enter new password"
                class="form-control"
                class="form-control"
              />
              <input
                type="password"
                id="reNewPasswd"
                name="reNewPasswd"
                placeholder="Enter the new password again"
                class="form-control"
                class="form-control"
              />
              <em id="tishi" style="color: red"></em>
              <br />
              <span>
                <input type="submit" value="Submit" class="btn btn-default" />
              </span>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script>
      function mySubmit(flag) {
        return flag;
      }

      $(document).keyup(function () {
        if (
          $("#newPasswd").val() != $("#reNewPasswd").val() &&
          $("#newPasswd").val() != "" &&
          $("#reNewPasswd").val() != "" &&
          $("#newPasswd").val().length == $("#reNewPasswd").val().length
        ) {
          $("#tishi").text(
            "The new password entered twice is different, please check"
          );
        } else {
          $("#tishi").text("");
        }
      });

      $("#repasswd").submit(function () {
        if (
          $("#oldPasswd").val() == "" ||
          $("#newPasswd").val() == "" ||
          $("#reNewPasswd").val() == ""
        ) {
          $("#tishi").text("Please fill in and submit");
          return mySubmit(false);
        } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
          $("#tishi").text(
            "The new password entered twice is different, please check"
          );
          return mySubmit(false);
        }
      });
    </script>
  </body>
</html>
