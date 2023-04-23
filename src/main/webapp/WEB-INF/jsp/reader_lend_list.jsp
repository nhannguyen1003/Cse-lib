<%@ page import="com.book.domain.Book" %><%-- Created by IntelliJ IDEA. User:
君行天下 Date: 2017/7/24 Time: 19:25 To change this template use File | Settings
| File Templates. --%> <%@ page contentType="text/html;charset=UTF-8"
language="java" %> <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<html>
  <head>
    <title>My lend</title>
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
            <li>
              <a href="reader_querybook.html"> Search </a>
            </li>
            <li>
              <a href="reader_info.html"> Reader infomation </a>
            </li>
            <li class="active">
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

    <div style="position: relative; top: 10%">
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

    <div
      class="panel panel-default"
      style="width: 90%; margin-left: 5%; margin-top: 5%"
    >
      <div class="panel-heading">
        <h3 class="panel-title">Reader Log</h3>
      </div>
      <div class="panel-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Book ID</th>
              <th>Start Date</th>
              <th>Given back</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list}" var="alog">
              <tr>
                <td><c:out value="${alog.bookId}"></c:out></td>
                <td><c:out value="${alog.lendDate}"></c:out></td>
                <td><c:out value="${alog.backDate}"></c:out></td>
                <c:if test="${empty alog.backDate}">
                  <td>Not returned</td>
                </c:if>
                <c:if test="${!empty alog.backDate}">
                  <td>returned</td>
                </c:if>
                <c:if test="">
                  <td>Overdue</td>
                </c:if>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
