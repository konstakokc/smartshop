<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>new user</title>
</head>
<body>

<c:url var="addAction" value="/addUser" />
<form:form action="${addAction}" modelAttribute="user" method="post">
    <table>
        <tr>
            <td><form:label path="firstName"><spring:message text="First Name"/></form:label></td>
            <td><form:input path="firstName" /></td>
        </tr>
        <tr>
            <td><form:label path="lastName"><spring:message text="Last Name"/></form:label></td>
            <td><form:input path="lastName" /></td>
        </tr>
        <tr>
            <td><form:label path="birthdate"><spring:message text="Birthdate"/></form:label></td>
            <td><form:input path="birthdate" /></td>
        </tr>
        <tr>
            <td><form:label path="email"><spring:message text="E-mail"/></form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td><form:label path="password"><spring:message text="Password"/></form:label></td>
            <td><form:password path="password" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty user.firstName}">
                    <input type="submit" value="<spring:message text="Edit User"/>" />
                </c:if>
                <c:if test="${empty user.firstName}">
                    <input type="submit" value="<spring:message text="Add User"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>