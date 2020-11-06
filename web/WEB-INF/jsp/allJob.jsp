<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>岗位列表</title>
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
                    <small>岗位列表 —— 显示所有岗位</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/job/toAddJob">新增</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <form action="${pageContext.request.contextPath}/job/queryJob" method="post" style="">
                <input type="text" name="jobName" class="form-control" placeholder="请输入岗位名称">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/job/allJob">显示全部</a>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>岗位编号</th>
                    <th>岗位名称</th>
                    <th>岗位类型</th>
                    <th>岗位容量</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="job" items="${requestScope.get('list')}">
                    <tr>
                        <td>${job.getJ_ID()}</td>
                        <td>${job.getJ_NAME()}</td>
                        <td>${job.getJ_TYPE()}</td>
                        <td>${job.getJ_SIZE()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/job/toUpdateJob?id=${job.getJ_ID()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/job/deleteJob?id=${job.getJ_ID()}">删除</a> |
                            <a href="${pageContext.request.contextPath}/job/queryJobStaff?id=${job.getJ_ID()}">员工列表</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
