<%-- Created by IntelliJ IDEA. User: 君行天下 Date: 2017/7/23 Time: 17:30 To
change this template use File | Settings | File Templates. --%> <%@ page
contentType="text/html;charset=UTF-8" %> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>CSE-Library</title>
    <link rel="icon" type="images/x-icon" href="img/BK.png" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
      body {
        margin: 0;
        padding: 0;
        overflow: visible;
        background-color: rgb(240, 242, 245);
      }
      #newsa {
        width: 500px;
        height: 200px;
        position: fixed;
        left: 35%;
        top: 30%;
      }
    </style>
  </head>
  <body
    style="
      background-image: url('img/img-0130-398.jpg');
      background-size: cover;
    "
  >
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
                ><span class="glyphicon glyphicon-log-in"></span>&nbsp


    <!-- 模态框（Modal） -->
    <div
      class="modal fade"
      id="myModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-hidden="true"
            >
              &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">Tips</h4>
          </div>
          <div class="modal-body">Please turn back safely after use.</div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">
              Knew
            </button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal -->
    </div>
    <c:if test="${!empty login}">
      <script>
        $(function () {
          $("#myModal").modal({
            show: true,
          });
        });
      </script>
    </c:if>
  </body>
</html>
