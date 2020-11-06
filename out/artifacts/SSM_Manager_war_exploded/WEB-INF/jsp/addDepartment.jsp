<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增部门</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增部门</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/depart/addDepartment" method="post">
        部门名称：<input type="text" name="D_NAME"><br><br><br>
        部门类型：<input type="text" name="D_TYPE"><br><br><br>
        部门电话：<input type="text" name="D_TEL"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>