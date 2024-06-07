<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.06.2024
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>HomeWork</title>
    <style>
        .container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Enter the card details</h1>
    <form class="center-block shadow-sm p-3 mb-5 bg-body-tertiary rounded" action="${pageContext.request.contextPath}/card_info.jsp" method="post">
        <div class="mb-3">
            <label for="numberCard" class="form-label">Card number</label>
            <input type="text" class="form-control" id="numberCard" name="numberCard" aria-describedby="numberCard">
        </div>
        <div class="mb-3">
            <label for="passCard" class="form-label">Сard password</label>
            <input type="text" class="form-control" id="passCard" name="passCard">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
