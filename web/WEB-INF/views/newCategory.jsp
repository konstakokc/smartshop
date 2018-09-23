<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>new Category</title>
</head>
<body>

<c:url var="addAction" value="/addCategory" />
<form:form action="${addAction}" modelAttribute="category" method="post">
    <table>
        <tr>
            <td><form:label path="name"><spring:message text="Name"/></form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <%--<tr>--%>
            <%--<td><form:label path="city"><spring:message text="City"/></form:label></td>--%>
            <%--<td><form:input path="city" /></td>--%>
        <%--</tr>--%>
        <tr>
            <td colspan="2">
                <c:if test="${!empty category.name}">
                    <input type="submit" value="<spring:message text="Edit Category"/>" />
                </c:if>
                <c:if test="${empty category.name}">
                    <input type="submit" value="<spring:message text="Add Category"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
