<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下属员工</title>
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
                    <small>员工列表 —— 全部员工</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/toAddStaff">新增</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <form action="${pageContext.request.contextPath}/job/queryJob" method="post" style="">
                <input type="text" name="jobName" class="form-control" placeholder="请输入岗位名称">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/allStaff">显示全部</a>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>员工编号</th>
                    <th>员工名称</th>
                    <th>员工性别</th>
                    <th>员工电话</th>
                    <th>员工部门</th>
                    <th>员工岗位</th>
                    <th>员工编制</th>
                    <th>员工来源</th>
                    <th>员工邮箱</th>
                    <th>员工学历</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="Staff" items="${requestScope.get('list')}">
                    <tr>
                        <td>${Staff.getS_ID()}</td>
                        <td>${Staff.getS_NAME()}</td>
                        <td>${Staff.getS_SEX()}</td>
                        <td>${Staff.getS_TEL()}</td>
                        <td>${Staff.getDepartment().getD_NAME()}</td>
                        <td>${Staff.getJob().getJ_NAME()}</td>
                        <td>${Staff.getS_EINFORMATION()}</td>
                        <td>${Staff.getS_PSOURCE()}</td>
                        <td>${Staff.getS_EMAIL()}</td>
                        <td>${Staff.getS_EDUCATION()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
