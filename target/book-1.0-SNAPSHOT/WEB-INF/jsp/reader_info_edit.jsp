<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>${readercard.name} home page</title>
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
      class="navbar navbar-default"
      role="navigation"
      style="background-color: #fff"
    >
      <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%; margin-right: 1%">
          <a class="navbar-brand" href="reader_main.html"
            ><p class="text-primary">My library</p></a
          >
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
          <ul class="nav navbar-nav navbar-left">
            <li class="active">
              <a href="reader_querybook.html"> Search </a>
            </li>
            <li>
              <a href="reader_info.html"> Reader infomation </a>
            </li>
            <li>
              <a href="mylend.html"> My lend </a>
            </li>
            <li>
              <a href="reader_repasswd.html"> Reset password </a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="reader_info.html"
                ><span class="glyphicon glyphicon-user"></span
                >&nbsp;${readercard.name},Logged</a
              >
            </li>
            <li>
              <a href="login.html"
                ><span class="glyphicon glyphicon-log-in"></span>&nbsp;Quit</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="col-xs-5 col-md-offset-3">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Information modification</h3>
        </div>
        <div class="panel-body">
          <form action="reader_edit_do_r.html" method="post" id="edit">
            <div class="input-group">
              <span class="input-group-addon">Reader ID</span>
              <input
                type="text"
                readonly="readonly"
                class="form-control"
                name="readerId"
                id="readerId"
                value="${readerinfo.readerId}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Name</span>
              <input
                type="text"
                class="form-control"
                name="name"
                id="name"
                value="${readerinfo.name}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Gender</span>
              <input
                type="text"
                class="form-control"
                name="sex"
                id="sex"
                value="${readerinfo.sex}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">DoB</span>
              <input
                type="text"
                class="form-control"
                name="birth"
                id="birth"
                value="${readerinfo.birth}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Address</span>
              <input
                type="text"
                class="form-control"
                name="address"
                id="address"
                value="${readerinfo.address}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Phone number</span>
              <input
                type="text"
                class="form-control"
                name="telcode"
                id="telcode"
                value="${readerinfo.telcode}"
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
              $("#edit").submit(function () {
                if (
                  $("#name").val() == "" ||
                  $("#sex").val() == "" ||
                  $("#birth").val() == "" ||
                  $("#address").val() == "" ||
                  $("#telcode").val() == ""
                ) {
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
