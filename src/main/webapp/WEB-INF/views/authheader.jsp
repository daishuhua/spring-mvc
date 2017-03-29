<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/14
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <a href="/">首页</a>
    <span>Dear <strong>${loggedinuser}</strong>, Welcome to CrazyUsers.</span> <span><a href="<c:url value="/logout" />">Logout</a></span>
</div>

