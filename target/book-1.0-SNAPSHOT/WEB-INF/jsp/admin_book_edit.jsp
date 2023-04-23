<%@ pagecontentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Edit《 ${detail.name}》</title>
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

    <div class="col-xs-6 col-md-offset-3" style="position: relative; top: 10%">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Edit《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
          <form
            action="book_edit_do.html?id=${detail.bookId}"
            method="post"
            id="addbook"
          >
            <div class="input-group">
              <span class="input-group-addon">Book title</span>
              <input
                type="text"
                class="form-control"
                name="name"
                id="name"
                value="${detail.name}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Author</span>
              <input
                type="text"
                class="form-control"
                name="author"
                id="author"
                value="${detail.author}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Publisher</span>
              <input
                type="text"
                class="form-control"
                name="publish"
                id="publish"
                value="${detail.publish}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">ISBN</span>
              <input
                type="text"
                class="form-control"
                name="isbn"
                id="isbn"
                value="${detail.isbn}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Introduction</span>
              <input
                type="text"
                class="form-control"
                name="introduction"
                id="introduction"
                value="${detail.introduction}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Language</span>
              <input
                type="text"
                class="form-control"
                name="language"
                id="language"
                value="${detail.language}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Price</span>
              <input
                type="text"
                class="form-control"
                name="price"
                id="price"
                value="${detail.price}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Publish date</span>
              <input
                type="text"
                class="form-control"
                name="pubdate"
                id="pubdate"
                value="${detail.pubdate}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Classification ID</span>
              <input
                type="text"
                class="form-control"
                name="classId"
                id="classId"
                value="${detail.classId}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Pressmark</span>
              <input
                type="text"
                class="form-control"
                name="pressmark"
                id="pressmark"
                value="${detail.pressmark}"
              />
            </div>
            <div class="input-group">
              <span class="input-group-addon">Status</span>
              <input
                type="text"
                class="form-control"
                name="state"
                id="state"
                value="${detail.state}"
              />
            </div>
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
              $("#addbook").submit(function () {
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
