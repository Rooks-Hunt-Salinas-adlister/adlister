<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div class="userAds container col-8">
        <table class="table table-striped-rows">
            <thead>
            <th scope="col">Title</th>
            <th scope="col">Description</th>
            <th scope="col">Details</th>
            <th scope="col">Update</th>
            <th scope="col">Delete</th>
            </thead>
            <c:forEach var="userAd" items="${userAds}">
                <tbody>
                <tr>
                    <td>${userAd.title}</td>
                    <td >${userAd.description}</td>
                    <td>
                        <form action="/details" method="post">
                            <input type="hidden" name="ad_id" value="${userAd.id}">
                            <input class="btn" type="submit" value="details">
                        </form>
                    </td>
                    <td>
                        <form action="updateAd" method="get">
                            <input class="btn" type="submit" value="UPDATE">
                            <input type="hidden" name="ad_id" value="${userAd.id}">
                        </form>
                    </td>
                    <td>
                        <form action="deleteAd" method="get">
                            <input class="btn" type="submit" value="DELETE">
                            <input type="hidden" name="ad_id" value="${userAd.id}">
                        </form>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div
</body>
</html>
