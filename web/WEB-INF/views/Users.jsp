<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${!empty users}">
    <table class="tg">
        <tr>
            <th width="120">ID</th>
            <th width="120">Name</th>
            <th width="120">Surname</th>
            <th width="120">E-mail</th>
            <th width="100">Birthdate</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>${user.birthdate}</td>
                    <%--<td><a href="<c:url value='/user/returnPage/${user.userID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
