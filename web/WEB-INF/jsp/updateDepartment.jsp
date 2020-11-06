<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改部门信息</title>
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
                    <small>修改部门信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/depart/updateDepartment" method="post">
        <input type="hidden" name="D_ID" value="${department.getD_ID()}"/>
        部门名称：<input type="text" name="D_NAME" value="${department.getD_NAME()}"/>
        部门类型：<input type="text" name="D_TYPE" value="${department.getD_TYPE()}"/>
        部门电话：<input type="text" name="D_TEL" value="${department.getD_TEL()}"/>
        <input type="submit" value="提交"/>
    </form>

</div>