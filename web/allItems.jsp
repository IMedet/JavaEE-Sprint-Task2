<%@ page import="db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp" %>
    <style>
        .card-row {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .card {
            width: 300px;
            height: 400px;
            margin: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .card-body {
            flex-grow: 1;
            overflow: hidden;
            padding: 20px;
        }

        .card-title, .card-subtitle, .card-text {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin: 0;
        }

        .card-link {
            display: block;
            margin-top: auto;
            background-color: limegreen;
            color: white;
            text-decoration: none;
            padding: 10px;
            border-radius: 5px;
        }

        .card-link:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<br><br>
<div class="container mt-12" style="display: flex; justify-content: center;">
    <nav class="navbar navbar-expand-lg" style="background-color: white">
        <div class="container-fluid">
            <span style="text-align: center; font-size: large; font-weight: bold;">Welcome to BITLAB SHOP</span>
        </div>
    </nav>
</div>

<div class="container">
    <% ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
        int count = 0;
        for (Item item: items){
            if (count % 3 == 0) { %>
    <div class="card-row">
        <% } %>

        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><%=item.getName()%></h5>
                <h6 class="card-title mb-2 text-muted" style="font-size: 25px"><span style="color: limegreen ">$</span><%=item.getPrice()%></h6>
                <p class="card-text"><%=item.getDescription()%></p>
                <a href="/details?id=<%=item.getId()%>" class="card-link">Details</a>
            </div>
        </div>

        <% count++;
            if (count % 3 == 0) { %>
    </div>
    <% }
    } %>
</div>
</body>
</html>
