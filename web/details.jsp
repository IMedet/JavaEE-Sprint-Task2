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
        <form action="/update" method="post">

        <%
            Item item = (Item) request.getAttribute("item");
        %>

        <input type="hidden" class="form-control" name="id" value="<%=item.getId()%>">
        <div class="mb-3">
            <label class="form-label">Name: </label>
            <input class="form-control" type="text" name="name"  value="<%=item.getName()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">Description: </label>
            <input class="form-control" type="text" name="description"  value="<%=item.getDescription()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">Price: </label>
            <input class="form-control" type="text" name="price"  value="<%=item.getPrice()%>">
        </div>
            <div class="mb-3">
                <button class="btn btn-success" type="submit">Save</button>
            </div>
        </form>
        <form action="/delete" method="post">
            <div class="mb-3">
                <input type="hidden" class="form-control" name="id" value="<%=item.getId()%>">
                <button class="btn btn-danger" type="submit">Delete</button>
            </div>
        </form>
    </div>
</body>