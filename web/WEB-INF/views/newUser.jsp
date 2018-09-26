<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>new user</title>
</head>
<body>

<c:url var="addAction" value="/addUser" />

<%--<form:form action="${addAction}" modelAttribute="user" method="post">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td><form:label path="firstName"><spring:message text="First Name"/></form:label></td>--%>
            <%--<td><form:input path="firstName" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="lastName"><spring:message text="Last Name"/></form:label></td>--%>
            <%--<td><form:input path="lastName" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="birthdate"><spring:message text="Birthdate"/></form:label></td>--%>
            <%--<td><form:input path="birthdate" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="email"><spring:message text="E-mail"/></form:label></td>--%>
            <%--<td><form:input path="email" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="password"><spring:message text="Password"/></form:label></td>--%>
            <%--<td><form:password path="password" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<c:if test="${!empty user.firstName}">--%>
                    <%--<input type="submit" value="<spring:message text="Edit User"/>" />--%>
                <%--</c:if>--%>
                <%--<c:if test="${empty user.firstName}">--%>
                    <%--<input type="submit" value="<spring:message text="Add User"/>" />--%>
                <%--</c:if>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>

<div class="container">
    <form action="${addAction}" method="post"  role="form" data-toggle="validator" >
        <input type="hidden" id="idUser" name="idUser" value="${user.id}">
        <h2>User</h2>
        <div class="form-group col-xs-4">

            <label for="firstName" class="control-label col-xs-4">Name:</label>
            <input type="text" name="firstName" id="firstName" class="form-control" value="${user.firstName}" required/>

            <label for="lastName" class="control-label col-xs-4">Last name:</label>
            <input type="text" name="lastName" id="lastName" class="form-control" value="${user.lastName}" required/>

            <label for="birthdate" class="control-label col-xs-4">Birth date:</label>
            <input type="date" pattern="^\d{2}\.\d{2}\.\d{4}$" name="birthdate" id="birthdate" class="form-control" value="${user.birthdate}" maxlength="10" placeholder="dd.MM.yyyy" required/>

            <label for="email" class="control-label col-xs-4">E-mail:</label>
            <input type="text" name="email" id="email" class="form-control" value="${user.email}" placeholder="smith@aol.com" required/>

            <label for="password" class="control-label col-xs-4">Password:</label>
            <input type="password" name="password" id="password" class="form-control" value="${user.password}" required/>

            <br></br>
            <c:if test="${empty user.id}">
                <button type="submit" class="btn btn-primary  btn-md">Edit</button>
            </c:if>
            <c:if test="${!empty user.id}">
                <button type="submit" class="btn btn-primary  btn-md">Add</button>
            </c:if>
        </div>
    </form>
</div>

</body>
</html>