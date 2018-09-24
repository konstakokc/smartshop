<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>new product</title>
</head>
<body>

<c:url var="addAction" value="/addProduct" />
<form:form action="${addAction}" modelAttribute="product" method="post">
    <table>
        <tr>
            <td><form:label path="name"><spring:message text="Name"/></form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td><form:label path="price"><spring:message text="Price"/></form:label></td>
            <td><form:input path="price" /></td>
        </tr>
        <tr>
            <td><form:label path="weight"><spring:message text="Weight"/></form:label></td>
            <td><form:input path="weight" /></td>
        </tr>
        <tr>
            <td><form:label path="dimensions"><spring:message text="Dimensions"/></form:label></td>
            <td><form:input path="dimensions" /></td>
        </tr>
        <tr>
            <td><form:label path="stockQuantity"><spring:message text="Quantity"/></form:label></td>
            <td><form:input path="stockQuantity" /></td>
        </tr>
        <%--Insert CatSelect Here--%>
        <tr>
            <td><form:label path="category.id"><spring:message text="Category"/></form:label></td>
            <td>
                <form:select path="category.id">
                <c:forEach items="${categoryList}" var="category">
                    <form:option value="${category.id}">${category.name}</form:option>
                </c:forEach>
                </form:select>
            </td>
        </tr>

        <%--PARAMETERS--%>

        <tr>
            <td colspan="2">
                <c:if test="${!empty product.id}">
                    <input type="submit" value="<spring:message text="Edit Product"/>" />
                </c:if>
                <c:if test="${empty product.id}">
                    <input type="submit" value="<spring:message text="Add Product"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>