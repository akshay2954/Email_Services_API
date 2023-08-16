<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL Directive
Tag -->
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/list_style.css">
    <meta charset="UTF-8">
    <title>All Leads</title>
    <style>
      
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #f5f5f5;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        a {
            color: #6c63ff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<a href="ViewCreatePageLead">new lead</a>
    <h2>All Leads</h2>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>ID No.</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Source</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="lead" items="${leads}">
                    <tr>
                        <td style="text-align: center"> <a href="leadInfo?id=${lead.id}">${lead.firstName}</a></td>
                       <td>${lead.firstName}</td>
                        <td>${lead.lastName}</td>
                        <td>${lead.email}</td>
                        <td>${lead.mobile}</td>
                        <td>${lead.source}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>