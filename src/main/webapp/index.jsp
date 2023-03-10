<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Welcome to my site!" />
        </jsp:include>
    </head>
    <body>

    <c:choose>
        <c:when test="${sessionScope.user != null}">
            <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="/WEB-INF/login.jsp"/>
<%--            <jsp:include page="/WEB-INF/register.jsp"/>--%>
        </c:otherwise>
    </c:choose>
    </body>
</html>
