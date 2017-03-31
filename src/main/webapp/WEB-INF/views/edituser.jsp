<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/8
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>新建用户</title>
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
                    <h1 class="page-header">更新用户</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            更新用户信息
                        </div>
                        <div class="panel-body">
                            <form:form method="post" modelAttribute="user" cssClass="form-horizontal">
                                <div class="form-group">
                                    <form:label path="userName" cssClass="col-lg-3 control-label">用户名</form:label>
                                    <div class="col-lg-5">
                                        <form:input path="userName" id="userName" cssClass="form-control" disabled="true"/>
                                        <div class="has-error">
                                            <form:errors path="userName" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <form:label path="password" cssClass="col-lg-3 control-label">密码</form:label>
                                    <div class="col-lg-5">
                                        <form:password path="password" id="password" cssClass="form-control"/>
                                        <div class="has-error">
                                            <form:errors path="password" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword" class="col-lg-3 control-label">确认密码</label>
                                    <div class="col-lg-5">
                                        <input type="password" id="confirmPassword" placeholder="再次输入系统登录密码" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastName" class="col-lg-3 control-label">用户姓名-姓</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="lastName" name="lastName" placeholder="请输入用户姓名-姓" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="lastName" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstName" class="col-lg-3 control-label">用户姓名-名</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="firstName" name="firstName" placeholder="请输入用户姓名-名" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="firstName" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-lg-3 control-label">电子邮件</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="email" name="email" placeholder="请输入常用电子邮件地址" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="email" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-3">账户状态</label>
                                    <div class="col-lg-2">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="Enabled" name="Enabled" value="on">账户有效
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="Locked" name="Locked" value="">账户锁定
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="credentialsExpired" name="credentialsExpired" value="">证书过期
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="accountExpired" name="accountExpired" value="">账号过期
                                            </label>
                                        </div>
                                    </div>
                                </div> <!-- /.form-group -->
                                <!-- Button -->
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" for="submit"></label>
                                    <div class="col-lg-5">
                                        <button id="submit" type="submit" class="btn btn-primary btn-block">提交</button>
                                    </div>
                                </div>
                                <input type="hidden" name="id" value="${user.id}"/>
                                <input type="hidden" name="superiorId" value="${user.superiorId}">
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
