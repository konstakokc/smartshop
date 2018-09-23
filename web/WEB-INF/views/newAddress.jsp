<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Address</title>
</head>
<body>

<c:url var="addAction" value="/addAddress/${user.id}" />
<form:form action="${addAction}" modelAttribute="address" method="post">
    <table>
        <tr>
            <td><form:label path="country"><spring:message text="Country"/></form:label></td>
            <td><form:input path="country" /></td>
        </tr>
        <tr>
            <td><form:label path="city"><spring:message text="City"/></form:label></td>
            <td><form:input path="city" /></td>
        </tr>
        <tr>
            <td><form:label path="postalCode"><spring:message text="Postal Code"/></form:label></td>
            <td><form:input path="postalCode" /></td>
        </tr>
        <tr>
            <td><form:label path="street"><spring:message text="Street"/></form:label></td>
            <td><form:input path="street" /></td>
        </tr>
        <tr>
            <td><form:label path="building"><spring:message text="Building"/></form:label></td>
            <td><form:input path="building" /></td>
        </tr>
        <tr>
            <td><form:label path="apartment"><spring:message text="Apartment"/></form:label></td>
            <td><form:input path="apartment" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty address.country}">
                    <input type="submit" value="<spring:message text="Edit Address"/>" />
                </c:if>
                <c:if test="${empty address.country}">
                    <input type="submit" value="<spring:message text="Add Address"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
