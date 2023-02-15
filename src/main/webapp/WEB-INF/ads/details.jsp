<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/15/23
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Details"/>
  </jsp:include>

  <style>
    h1 {
      display: flex;
      justify-content: space-around;
      font-size: 60px;
      margin: 15px auto;
      color: black;
    }
    h2 {
      display: flex;
      justify-content: space-around;
      font-size: 40px;
      margin: 15px auto;
      color: black;
      text-decoration: underline;
    }
    h4 {
      display: flex;
      justify-content: space-around;
      font-size: 25px;
      margin: 20px auto;
      color: black;
      width: 25%;
    }
    .detailAd {
      border: 1px solid black;
      width: 50%;
      margin: auto;
      display: flex;
      justify-content: space-around;
      align-content: center;
      align-items: center;
    }
  </style>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<h1>Here are the details of your ad</h1>

<div class="detailAd">
  <h2 class="title">${detailedAd.title}</h2>
  <h4 class="description">${detailedAd.description}</h4>
</div>


</body>
</html>
