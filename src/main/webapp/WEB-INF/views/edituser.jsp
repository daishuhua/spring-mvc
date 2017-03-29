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

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@include file="authheader.jsp" %>
    <div>update user</div>
    <form:form method="POST" modelAttribute="user">
        <form:hidden path="id" id="id"/>
        <form:hidden path="superiorId" id="superiorId"/>
        <table>
            <tbody>
                <tr>
                    <td>First Name</td>
                    <td><form:input path="firstName" id="firstName"/></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><form:input path="lastName" id="lastName"/> </td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td><form:input path="userName" id="userName" disabled="true"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><form:password path="password" id="password"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><form:input path="email" id="email"/></td>
                </tr>
                <tr>
                    <td>Account Expired</td>
                    <td><form:checkbox path="accountExpired" id="accountExpired"></form:checkbox></td>
                </tr>
                <tr>
                    <td>Credentials Expired</td>
                    <td><form:checkbox path="credentialsExpired" id="credentialsExpired"></form:checkbox></td>
                </tr>
                <tr>
                    <td>Enabled</td>
                    <td><form:checkbox path="Enabled" id="enabled"></form:checkbox></td>
                </tr>
                <tr>
                    <td>Locked</td>
                    <td><form:checkbox path="Locked" id="locked"></form:checkbox></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="update User"></td>
                </tr>
            </tbody>
        </table>
    </form:form>
</body>
</html>
