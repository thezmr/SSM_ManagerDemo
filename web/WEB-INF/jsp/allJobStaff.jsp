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
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/job/allJob">返回</a>
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
                <c:forEach var="JobStaff" items="${requestScope.get('list')}">
                    <tr>
                        <td>${JobStaff.getS_ID()}</td>
                        <td>${JobStaff.getS_NAME()}</td>
                        <td>${JobStaff.getS_SEX()}</td>
                        <td>${JobStaff.getS_TEL()}</td>
                        <td>${JobStaff.getS_EINFORMATION()}</td>
                        <td>${JobStaff.getS_PSOURCE()}</td>
                        <td>${JobStaff.getS_EMAIL()}</td>
                        <td>${JobStaff.getS_EDUCATION()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
