<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/15
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>新建角色</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="/resources/sb-admin-2/css/sb-admin-2.css" rel="stylesheet">
    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <link href="/resources/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/resources/bootstrap/js/html5shiv.min.js"></script>
    <script src="/resources/bootstrap/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">
    <!-- Navigation -->
    <jsp:include page="navigation.jsp"></jsp:include>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">新建角色</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            新建角色信息
                        </div>
                        <div class="panel-body">
                            <c:url value="/role/saverole" var="saveRoleUrl"/>
                            <form:form action="${saveRoleUrl}" method="post" modelAttribute="role" cssClass="form-horizontal">
                                <div class="form-group">
                                    <label for="code" class="col-lg-3 control-label">角色编码</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="code" name="code" placeholder="请输入英数字角色编码" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="code" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="col-lg-3 control-label">角色名称</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="name" name="name" placeholder="请输入角色名称" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="name" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="remark" class="col-lg-3 control-label">角色说明</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="remark" name="remark" placeholder="请输入角色说明信息" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="remark" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <!-- Button -->
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" for="submit"></label>
                                    <div class="col-lg-5">
                                        <button id="submit" type="submit" class="btn btn-primary btn-block">提交</button>
                                    </div>
                                </div>
                                <input type="hidden" name="id" value="${role.id}"/>
                            </form:form> <!-- /form -->

                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script src="/resources/jquery/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/metisMenu/metisMenu.min.js"></script>
<script src="/resources/sb-admin-2/js/sb-admin-2.min.js"></script>


</body>
</html>
