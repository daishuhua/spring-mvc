<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/15
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Role List</title>
</head>
<body>
<h2>hello,role list!</h2>
<%@include file="authheader.jsp" %>
<div><span>List of Users </span></div>
<table>
    <thead>
    <tr>
        <th>角色编码</th>
        <th>角色名称</th>
        <th>角色说明</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${roleList}" var="role">
        <tr>
            <td>${role.code}</td>
            <td>${role.name}</td>
            <td>${role.remark}</td>
            <td><a href="<c:url value='edit-role-${role.code}' />">edit</a></td>
            <td><a href="<c:url value='delete-role-${role.code}' />">delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <a href="<c:url value='newrole' />">Add New Role</a>
</div>

</body>
</html>
