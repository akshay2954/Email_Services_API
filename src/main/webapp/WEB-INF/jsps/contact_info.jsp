
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Information</title>
    <link rel="stylesheet" type="text/css" href="/css/info_style.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .profile-card {
            background-color: #ffffff;
            max-width: 300px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .profile-card header {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-card h1 {
            font-size: 24px;
            margin-top: 0;
        }

        .profile-card h2 {
            font-size: 18px;
            margin-top: 0;
            color: #888888;
        }

        .profile-bio {
            margin-bottom: 20px;
        }

        .profile-bio p {
            margin: 0;
            font-size: 14px;
        }

        .profile-bio p.mobile {
            font-size: 18px;
            font-family: Verdana, sans-serif;
            color: #FF5722;
            margin-top: 5px;
        }

        .social {
            text-align: center;
        }

        .social a {
            margin: 5px;
            text-decoration: none;
        }

        .social input[type="submit"] {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 3px;
        }

        .social input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="profile-card">
        <header>
            <a class="fa fa-user" style="font-size: 80px; color: #15172b"></a>
            <h1>${contact.firstName} ${contact.lastName}</h1>
            <h2>${contact.email}</h2>
        </header>
        <div class="profile-bio">
            <p>Mobile:</p>
            <p class="mobile">${contact.mobile}</p>
        </div>
        <div class="social">
            <a href="updateContact?id=${contact.id}"><input class="btn-hover color-8" type="submit" value="Billing"></a>
            <a href="delete?id=${contact.id}"><input class="btn-hover color-10" type="submit" value="Delete"></a>
            <a href="updateContact?id=${contact.id}"><input class="btn-hover color-9" type="submit" value="Update"></a>
        </div>
    </div>
</body>
</html>