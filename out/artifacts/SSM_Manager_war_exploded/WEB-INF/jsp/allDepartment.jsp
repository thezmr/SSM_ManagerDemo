<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门列表</title>
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
                    <small>部门列表 —— 显示所有部门</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/depart/toAddDepartment">新增</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <form action="${pageContext.request.contextPath}/depart/queryDepartment" method="post" style="">
                <input type="text" name="departName" class="form-control" placeholder="请输入部门名称">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/depart/allDepartment">显示全部</a>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>部门编号</th>
                    <th>部门名称</th>
                    <th>部门类型</th>
                    <th>部门电话</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="department" items="${requestScope.get('list')}">
                    <tr>
                        <td>${department.getD_ID()}</td>
                        <td>${department.getD_NAME()}</td>
                        <td>${department.getD_TYPE()}</td>
                        <td>${department.getD_TEL()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/depart/toUpdateDepartment?id=${department.getD_ID()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/depart/deleteDepartment?id=${department.getD_ID()}">删除</a> |
                            <a href="${pageContext.request.contextPath}/depart/queryDeStaff?id=${department.getD_ID()}">员工列表</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
