<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${!empty users}">
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
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.country}</td>
                <td>${user.city}</td>
                <td>${user.postalCode}</td>
                <td>${user.street}</td>
                <td>${user.building}</td>
                <td>${user.apartment}</td>
                    <%--<td><a href="<c:url value='/user/returnPage/${user.userID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
