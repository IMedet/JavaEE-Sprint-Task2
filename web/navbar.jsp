<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="container mt-12" style="border-bottom: 1px #ccc solid">
    <nav class="navbar navbar-expand-lg" style="background-color: white" >
        <div class="container-fluid">
            <a class="navbar-brand" href="/allItems"  style="color: black; font-weight: bold; font-size: 25px">BITLAB SHOP</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon" ></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/addItem" style="color: black">Add Items</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/allItems" style="color: black">Top Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/allItems" style="color: black">New Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/allItems" style="color: black">By Category</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/allItems" style="color: black">Sign In</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
</div>
</body>
</html>
