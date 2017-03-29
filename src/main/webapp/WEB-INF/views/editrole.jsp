<%--
  Created by IntelliJ IDEA.
  User: shuhuadai
  Date: 2017/3/15
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="authheader.jsp" %>
<div>update role</div>
<form:form method="POST" modelAttribute="role">
    <form:hidden path="id" id="id"/>
    <table>
        <tbody>
        <tr>
            <td>角色编码</td>
            <td><form:input path="code" id="code"/></td>
        </tr>
        <tr>
            <td>角色名称</td>
            <td><form:input path="name" id="name"/> </td>
        </tr>
        <tr>
            <td>角色说明</td>
            <td><form:input path="remark" id="remark"/> </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update Role"></td>
        </tr>
        </tbody>
    </table>
</form:form>

</body>
</html>
