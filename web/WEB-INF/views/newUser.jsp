<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
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

<nav class="site-header sticky-top py-1">
    <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="<c:url value="/index.jsp"/>">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/users"/>">Users</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/products"/>">Products</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/categories"/>">Categories</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/addresses"/>">Addresses</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/orders"/>">Orders</a>
    </div>
</nav>

<div class="container col-md-4 offset-md-3">
    <form action="${addAction}" method="post"  role="form" data-toggle="validator" >
        <input type="hidden" id="idUser" name="idUser" value="${user.id}">
        <h2>User</h2>
        <div class="form-group">

            <label for="firstName" class="control-label ">Name:</label>
            <input type="text" name="firstName" id="firstName" class="form-control" value="${user.firstName}" required/>

            <label for="lastName" class="control-label ">Last name:</label>
            <input type="text" name="lastName" id="lastName" class="form-control" value="${user.lastName}" required/>

            <label for="birthdate" class="control-label ">Birth date:</label>
            <input type="date" pattern="^\d{2}\.\d{2}\.\d{4}$" name="birthdate" id="birthdate" class="form-control" value="${user.birthdate}" maxlength="10" placeholder="dd.MM.yyyy" required/>

            <label for="email" class="control-label ">E-mail:</label>
            <input type="email" name="email" id="email" class="form-control" value="${user.email}" placeholder="smith@aol.com" required/>

            <label for="password" class="control-label ">Password:</label>
            <input type="password" name="password" id="password" class="form-control" value="${user.password}" required/>

            </br>
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