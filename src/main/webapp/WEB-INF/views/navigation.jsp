<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/22
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<!-- Navigation -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
            <ul class="nav" id="side-menu">
                <li>
                    <a href="#"><i class="fa fa-key fa-fw"></i>系统权限管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">用户维护<span class="fa arrow"></span></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="/user/list" id="userlist">用户列表</a>
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
                                    <a href="/resource/list">资源树</a>
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
