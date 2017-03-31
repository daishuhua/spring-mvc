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
    <title>用户列表</title>
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
    <jsp:include page="navigation.jsp"></jsp:include>

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
//        $('#userlist').active();
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
                            var actionButtons = '<a href="edit-user-' + full.userName + '" class="btn btn-success btn-xs">编辑</a>';
                            actionButtons += '<a href="delete-user-' + full.userName + '" class="btn btn-danger btn-xs" style="margin-left: 10px;">删除</a>';
                            return actionButtons;
                        }
                },
            ]
        });
    });
</script>

</body>
</html>
