<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增员工</title>
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
                    <small>新增员工</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/staff/addStaff" method="post">
        员工名称:<input type="text" name="S_NAME"><br><br><br>
        员工性别:<input type="text" name="S_SEX"><br><br><br>
        员工电话:<input type="text" name="S_TEL"><br><br><br>
<%--        员工部门<input type="text" name="S_DEPARTMENTID"><br><br><br>--%>
<%--        员工岗位<input type="text" name="S_JOBID"><br><br><br>--%>
        员工部门:<select name="S_DEPARTMENTID">
            <c:forEach var="DeID" items="${requestScope.get('listDeID')}" varStatus="loop">
                <option value =${DeID}>${requestScope.get('listDeName')[loop.count-1]}</option>
            </c:forEach>
        </select><br><br><br>
        员工岗位:<select name="S_JOBID">
            <c:forEach var="JobID" items="${requestScope.get('listJobID')}" varStatus="loop">
                <option value =${JobID}>${requestScope.get('listJobName')[loop.count-1]}</option>
            </c:forEach>
        </select><br><br><br>
        员工编制:<input type="text" name="S_EINFORMATION"><br><br><br>
        员工来源:<input type="text" name="S_PSOURCE"><br><br><br>
        员工邮箱:<input type="text" name="S_EMAIL"><br><br><br>
        员工学历:<input type="text" name="S_EDUCATION"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>