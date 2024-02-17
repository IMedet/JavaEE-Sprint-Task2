<%@ page import="db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp" %>
</head>
<body>
<%@include file="navbar.jsp"%>
<br><br>
<div class="container mt-3">
    <form action="/addItem" method="post">
        <div class="mb-3">
            <label class="form-label">Name: </label>
            <input class="form-control" type="text" name="name"  >
        </div>
        <div class="mb-3">
            <label class="form-label">Description: </label>
            <input class="form-control" type="text" name="description" >
        </div>
        <div class="mb-3">
            <label class="form-label">Price: </label>
            <input class="form-control" type="text" name="price" >
        </div>
        <div class="mb-3">
            <button class="btn btn-success" type="submit">ADD</button>
        </div>
    </form>
</div>
</body>