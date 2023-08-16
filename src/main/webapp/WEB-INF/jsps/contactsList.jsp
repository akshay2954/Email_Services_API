<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL Directive
Tag -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact List</title>
    <link rel="stylesheet" type="text/css" href="/css/list_style.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .hoverTable {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .hoverTable th,
        .hoverTable td {
            padding: 10px;
            text-align: left;
        }

        .hoverTable th {
            background-color: #f5f5f5;
        }

        .hoverTable tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .hoverTable tbody tr:hover {
            background-color: #e0e0e0;
        }

        .social {
            display: flex;
            gap: 10px;
        }

        .social input[type="submit"] {
            padding: 8px 12px;
            font-size: 14px;
            font-weight: bold;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .color-8 {
            background-color: #FF5722;
            color: #ffffff;
        }

        .color-8:hover {
            background-color: #e64a19;
        }

        .color-10 {
            background-color: #f44336;
            color: #ffffff;
        }

        .color-10:hover {
            background-color: #d32f2f;
        }

        .color-9 {
            background-color: #2196F3;
            color: #ffffff;
        }

        .color-9:hover {
            background-color: #1976d2;
        }
    </style>
</head>
<body>
    <div class="container">
        <table class="hoverTable">
            <thead>
                <tr>
                    <th>ID No.</th>
                    <th>FIRST NAME</th>
                    <th>LAST NAME</th>
                    <th>EMAIL</th>
                    <th>MOBILE</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="contact" items="${contact}">
                    <tr>
                        <td style="text-align: center">
                            <a href="contactInfo?id=${contact.id}">${contact.id}</a>
                        </td>
                        <td>${contact.firstName}</td>
                        <td>${contact.lastName}</td>
                        <td>${contact.email}</td>
                        <td>${contact.mobile}</td>
                        <td>
                            <div class="social">
                                <a href="billingPage?id=${contact.id}">
                                    <input class="btn-hover color-8" type="submit" value="Billing">
                                </a>
                                <a href="deleteContact?id=${contact.id}">
                                    <input class="btn-hover color-10" type="submit" value="Delete">
                                </a>
                                <a href="updateContact?id=${contact.id}">
                                    <input class="btn-hover color-9" type="submit" value="Update">
                                </a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>