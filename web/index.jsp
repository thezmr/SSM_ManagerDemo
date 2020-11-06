<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
</head>
<body>

<h3>
  <a href="${pageContext.request.contextPath}/depart/allDepartment">点击进入部门列表</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/job/allJob">点击进入岗位列表</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/staff/allStaff">点击进入员工列表</a>
</h3>

</body>
</html>
