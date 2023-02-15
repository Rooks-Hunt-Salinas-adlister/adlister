<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <br>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
            <a href="/register">
                <button   type="button" class="btn btn-primary text-white" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Register
                </button>
            </a>
        </form>
        <hr>
        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Register For Our Site!" />
        </jsp:include>
    </div>
</body>
</html>
