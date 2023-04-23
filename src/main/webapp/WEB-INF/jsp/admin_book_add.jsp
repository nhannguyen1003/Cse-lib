<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add book information</title>
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
          <a class="navbar-brand" href="admin_main.html"> CSE library system</a>
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
                <li><a href="reader_add.html">Increase readers</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Book lending management
                <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li><a href="lendlist.html">Reader log</a></li>
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

    <div style="position: relative; top: 10%; width: 80%; margin-left: 10%">
      <form action="book_add_do.html" method="post" id="addbook">
        <div class="form-group">
          <label for="name">Book title</label>
          <input
            type="text"
            class="form-control"
            name="name"
            id="name"
            placeholder="Please enter the title of the book"
          />
        </div>
        <div class="form-group">
          <label for="author">Author</label>
          <input
            type="text"
            class="form-control"
            name="author"
            id="author"
            placeholder="Please enter the author name"
          />
        </div>
        <div class="form-group">
          <label for="publish">Publisher</label>
          <input
            type="text"
            class="form-control"
            name="publish"
            id="publish"
            placeholder="Please enter the publisher"
          />
        </div>
        <div class="form-group">
          <label for="isbn">ISBN</label>
          <input
            type="text"
            class="form-control"
            name="isbn"
            id="isbn"
            placeholder="Please enter ISBN"
          />
        </div>
        <div class="form-group">
          <label for="introduction">Introduction</label>
          <textarea
            class="form-control"
            rows="3"
            name="introduction"
            id="introduction"
            placeholder="Please enter a brief introduction"
          ></textarea>
        </div>
        <div class="form-group">
          <label for="language">Language</label>
          <input
            type="text"
            class="form-control"
            name="language"
            id="language"
            placeholder="Please enter language"
          />
        </div>
        <div class="form-group">
          <label for="price">Price</label>
          <input
            type="text"
            class="form-control"
            name="price"
            id="price"
            placeholder="Please enter a price"
          />
        </div>
        <div class="form-group">
          <label for="pubdate">Publication date</label>
          <input
            type="text"
            class="form-control"
            name="pubdate"
            id="pubdate"
            placeholder="Please enter a publication date"
          />
        </div>
        <div class="form-group">
          <label for="classId">Classification ID</label>
          <input
            type="text"
            class="form-control"
            name="classId"
            id="classId"
            placeholder="Please enter a Classification ID"
          />
        </div>
        <div class="form-group">
          <label for="pressmark">Pressmark</label>
          <input
            type="text"
            class="form-control"
            name="pressmark"
            id="pressmark"
            placeholder="Please enter the pressmark"
          />
        </div>
        <div class="form-group">
          <label for="state">State</label>
          <input
            type="text"
            class="form-control"
            name="state"
            id="state"
            placeholder="Please enter book status"
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
  </body>
</html>
