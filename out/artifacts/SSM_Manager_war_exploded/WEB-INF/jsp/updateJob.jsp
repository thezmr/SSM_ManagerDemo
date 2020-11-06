<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改岗位信息</title>
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
                    <small>修改岗位信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/job/updateJob" method="post">
        <input type="hidden" name="J_ID" value="${job.getJ_ID()}"/>
        岗位名称：<input type="text" name="J_NAME" value="${job.getJ_NAME()}"/>
        岗位类型：<input type="text" name="J_TYPE" value="${job.getJ_TYPE()}"/>
        岗位容量：<input type="text" name="J_SIZE" value="${job.getJ_SIZE()}"/>
        <input type="submit" value="提交"/>
    </form>

</div>