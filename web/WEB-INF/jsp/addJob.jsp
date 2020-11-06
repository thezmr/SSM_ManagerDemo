<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增岗位</title>
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
                    <small>新增岗位</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/job/addJob" method="post">
        岗位名称：<input type="text" name="J_NAME"><br><br><br>
        岗位类型：<input type="text" name="J_TYPE"><br><br><br>
        岗位容量：<input type="text" name="J_SIZE"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>