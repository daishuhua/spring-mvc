<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/14
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登陆页面</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    <!--[if lt IE 9]>
    <script src="/resources/bootstrap/js/html5shiv.min.js"></script>
    <script src="/resources/bootstrap/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Sign In</div>
                    <div style="float: right; font-size: 80%; position: relative; top: -10px;"><a href="#">Forgot password?</a></div>
                </div>

                <div style="padding-top: 30px;" class="panel-body">
                    <div style="display: none;" id="login-alert" class="alert alert-danger col-sm-offset-12"></div>
                    <c:if test="${param.error != null}">
                        <p>
                            Invalid username and password.
                        </p>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <p>
                            You have been logged out.
                        </p>
                    </c:if>
                    <c:url value="/login" var="loginUrl"/>
                    <form id="loginform" class="form-horizontal" role="form" action="${loginUrl}" method="post">

                        <div style="margin-bottom: 25px;" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="login-username" type="text" class="form-control" name="userName" value="" placeholder="Enter username">
                        </div>

                        <div style="margin-bottom: 25px;" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="login-password" type="password" class="form-control" name="password" placeholder="Enter password">
                        </div>

                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <input id="login-remember" type="checkbox" name="rememberMe" value="on">Remember me
                                </label>
                            </div>
                        </div>

                        <div style="margin-top: 10px;" class="form-group">
                            <div class="col-md-12 control-box">
                                <a id="btn-login" href="#" class="btn btn-success" onclick="$(this).closest('form').submit()">Login</a>
                                <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>
                            </div>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    </form>
                </div>
            </div>

        </div>
    </div>
    <script src="/resources/jquery/jquery.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
