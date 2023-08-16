<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Compose</title>
    <style>
        body {
            background-image: url("background-image.jpg");
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .email-form {
            background-color: #fff;
            padding: 20px;
            max-width: 400px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .email-form h2 {
            margin-top: 0;
            color: #333;
        }

        .email-form label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }

        .email-form input[type="text"],
        .email-form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        .email-form textarea {
            height: 200px;
        }

        .email-form input[type="submit"] {
            background-color: #337ab7;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 14px;
            margin-top: 10px;
            transition: background-color 0.3s ease-in-out;
        }

        .email-form input[type="submit"]:hover {
            background-color: #286090;
        }

        .email-form .message {
            margin-top: 15px;
            font-size: 16px;
            color: #286090;
        }
    </style>
</head>
<body>
    <div class="email-form">
        <h2>Compose</h2>
        <form action="triggerEmail" method="post">
            <label for="email">To:</label>
            <input type="text" name="email" value="${email}" required>

            <label for="subject">Subject:</label>
            <input type="text" name="subject" required>

            <label for="content">Message:</label>
            <textarea name="content" rows="10" cols="50" required></textarea>

            <input type="submit" value="Send">
        </form>
        <div class="message">${msg}</div>
    </div>
</body>
</html>
