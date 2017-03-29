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
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toogle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">国安社区科技(北京)XX信息管理系统</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>用户信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i>设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="/logout"><i class="fa fa-sign-out fa-fw"></i>登出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links-->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav in" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li  class="active">
                        <a href="#"><i class="fa fa-key fa-fw"></i>用户权限管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li class="active">
                                <a href="#">用户维护<span class="fa arrow"></span></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/user/list">用户列表</a>
                                    </li>
                                    <li>
                                        <a href="/user/newuser" class="active">新建用户</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">角色管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/role/list">角色列表</a>
                                    </li>
                                    <li>
                                        <a href="/role/newrole">新建角色</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">资源管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/resource/list">资源列表</a>
                                    </li>
                                    <li>
                                        <a href="/resource/list">增加资源</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->

    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">新建用户</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            新建用户信息
                        </div>
                        <div class="panel-body">
                            <c:url value="/user/saveuser" var="saveUserUrl"/>
                            <form:form action="${saveUserUrl}" method="post" modelAttribute="user" cssClass="form-horizontal">
                                <div class="form-group">
                                    <label for="userName" class="col-lg-3 control-label">用户名</label>
                                    <div class="col-lg-5">
                                        <input type="text" id="userName" name="userName" placeholder="登录系统的唯一识别账号，一旦用户建立，不能修改！" class="form-control" autofocus>
                                        <div class="has-error">
                                            <form:errors path="userName" cssClass="help-block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-lg-3 control-label">密码</label>
                                    <div class="col-lg-5">
                                        <input type="password" id="password" name="password" placeholder="系统登录密码" class="form-control" autofocus>
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
                                    <div class="col-lg-5 col-sm-offset-3">
                                        <button type="submit" class="btn btn-primary btn-block">保存</button>
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
