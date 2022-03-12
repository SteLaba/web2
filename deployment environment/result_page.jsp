<%@ page import="com.example.model.Results" %>
<%@ page import="com.example.model.Point" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="2nd LabWork - WebProgramming" name="description">
    <meta content="Stefan Labovic" name="author">
    <title>2nd LabWork - WebProgramming</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../images/icon.ico">
</head>
<body>
    <header>
            <span>
                Stefan Labovic, P3210, V-10201
            </span>
    </header>
    <div id="result">
        <%
            Results results = (Results) request.getSession().getAttribute("results");
            Point point = results.getFirst();
        %>
        <table class="result_table">
            <tr>
                <th class="variable">X</th>
                <th class="variable">Y</th>
                <th class="variable">R</th>
                <th>Result</th>
            </tr>
            <tr>
                <th><%= point.getX() %></th>
                <th><%= point.getY() %></th>
                <th><%= point.getR() %></th>
                <th style="color: <%= point.getResult() ? "green" : "darkred" %>"><%= point.getResult() %></th>
            </tr>
        </table>
    </div>

    <div class="form">
        <form method="get" action="index.jsp">
            <button type="submit" >Go back</button>
        </form>
    </div>
</body>
</html>
