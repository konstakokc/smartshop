<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Addresses</title>
</head>
<body>
Category list
<c:if test="${!empty categories}">
    <table class="tg">
        <tr>
            <th width="120">ID</th>
            <th width="60">Name</th>
        </tr>
        <c:forEach items="${categories}" var="category">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <%--<td><a href="<c:url value='/category/returnPage/${category.categoryID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
