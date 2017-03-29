<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/7
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="/resources/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
    <link href="/resources/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
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
                    <li class="active">
                        <a href="#"><i class="fa fa-key fa-fw"></i>用户权限管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li class="active">
                                <a href="#">用户维护<span class="fa arrow"></span></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/user/list" class="active">用户列表</a>
                                    </li>
                                    <li>
                                        <a href="/user/newuser">新建用户</a>
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
                    <h1 class="page-header">用户列表</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            所有用户列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-users">
                            </table>
                            <!-- /.table-responsive -->
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script src="/resources/jquery/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/metisMenu/metisMenu.min.js"></script>
<script src="/resources/datatables/js/jquery.dataTables.min.js"></script>
<script src="/resources/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="/resources/datatables-responsive/dataTables.responsive.js"></script>
<script src="/resources/sb-admin-2/js/sb-admin-2.min.js"></script>
<script>
    $(document).ready(function() {
        $('#dataTables-users').DataTable({
            "responsive": true,
            "bPaginate": true,
            "bFilter": false,
            "bSort": false,
            "language": {
                "url" : "/resources/i18n/zh_cn.lang"
            },
            "ajax": {
                "url": "/user/list",
                "type": "POST",
                "data" : {"${_csrf.parameterName}" : "${_csrf.token}"},
                "dataSrc": "",
            },
            "columns": [
                {"title": "用户名", "data": "userName"},
                {
                    "title": "用户姓名",
                    "render":
                        function (data, type, full, meta) {
                            return full.lastName + " " + full.firstName;
                        }
                },
                {"title": "电子邮件", "data": "email"},
//                {
//                    "title": "授权角色",
//                    "undefined": "",
//                    "render": "userRoles[, ].name"
//                },
                {
                    "title": "操作",
                    "render":
                        function (data, type, full, meta) {
                            return '<a href="edit-user-' + full.userName + '">edit</a>&nbsp;&nbsp;<a href="delete-user-' + full.userName + '">delete</a>';
                        }
                }
            ]
        });
    });
</script>

</body>
</html>
