<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Addresses</title>
</head>
<body>
<c:if test="${!empty addresses}">
    <table class="tg">
        <tr>
            <th width="120">ID</th>
            <th width="120">Country</th>
            <th width="120">City</th>
            <th width="120">PC</th>
            <th width="100">Street</th>
            <th width="100">Building</th>
            <th width="60">Apartment</th>
        </tr>
        <c:forEach items="${addresses}" var="address">
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
    </table>
</c:if>
</body>
</html>
