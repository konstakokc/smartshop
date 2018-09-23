<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Info</title>
</head>
<body>
<c:url var="addAction" value="/newAddress" />
<form:form action="${addAction}" modelAttribute="user" method="get">
    <table>
        <tr>
            <td><form:label path="id"><spring:message text="First Name"/></form:label></td>
            <td><form:input path="id" readonly="true" /></td>
        </tr>
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
        <%--<tr>--%>
            <%--<td><form:label path="password"><spring:message text="Password"/></form:label></td>--%>
            <%--<td><form:password path="password" /></td>--%>
        <%--</tr>--%>
        <c:forEach items="${user.addresses}" var="address">
            <tr>
                <td>${address.id}</td>
                <td>${address.country}</td>
                <td>${address.city}</td>
                <td>${address.postalCode}</td>
                <td>${address.street}</td>
                <td>${address.building}</td>
                <td>${address.apartment}</td>
                    <%--<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
        <c:forEach items="${user.orders}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.orderStatus}</td>
                <td>${order.placedOn}</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message text="Add new Address"/>" />
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
