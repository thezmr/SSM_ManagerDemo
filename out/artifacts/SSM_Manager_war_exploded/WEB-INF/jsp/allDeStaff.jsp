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
                    <small>员工列表 —— 下属员工</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/depart/allDepartment">返回</a>
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
                    <th>员工编制</th>
                    <th>员工来源</th>
                    <th>员工邮箱</th>
                    <th>员工学历</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="Destaff" items="${requestScope.get('list')}">
                    <tr>
                        <td>${Destaff.getS_ID()}</td>
                        <td>${Destaff.getS_NAME()}</td>
                        <td>${Destaff.getS_SEX()}</td>
                        <td>${Destaff.getS_TEL()}</td>
                        <td>${Destaff.getS_EINFORMATION()}</td>
                        <td>${Destaff.getS_PSOURCE()}</td>
                        <td>${Destaff.getS_EMAIL()}</td>
                        <td>${Destaff.getS_EDUCATION()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
