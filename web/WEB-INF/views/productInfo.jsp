<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Product Info</title>
</head>
<body>
<%--<c:url var="addAction" value="/newAddress" />--%>
<c:url var="addAction" value="/products" />
<form:form action="${addAction}" modelAttribute="product" method="post">
    <table>
        <tr>
            <td><form:label path="id"><spring:message text="Id"/></form:label></td>
            <td><form:input path="id" readonly="true" /></td>
        </tr>
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
            <%--Insert CatSelect Here--%>
        <tr>
            <td><form:label path="stockQuantity"><spring:message text="Quantity"/></form:label></td>
            <td><form:input path="stockQuantity" /></td>
        </tr>
        <tr>
            <td><form:label path="category.id"><spring:message text="Category"/></form:label></td>
            <td><form:input path="category.id" /></td>
        </tr>
        <c:forEach items="${product.parameters}" var="parameter">
            <tr>
                <td>${parameter.key}</td>
                <td>${parameter.value}</td>
                    <%--<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message text="Products"/>" />
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
