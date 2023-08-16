<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Contact</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .form {
            background-color: #ffffff;
            max-width: 400px;
            margin: 20px auto;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .input-container {
            position: relative;
            margin-bottom: 20px;
        }

        .input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 3px;
            background-color: #f4f4f4;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
        }

        .placeholder {
            position: absolute;
            top: 12px;
            left: 10px;
            transition: all 0.3s ease;
            opacity: 0.5;
        }

        .input:focus + .placeholder,
        .input:valid + .placeholder {
            font-size: 12px;
            top: -10px;
            left: 5px;
            opacity: 1;
            color: #FF5722;
        }

        .submit {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            background-color: #4CAF50;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .submit:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="updateContactInfo" method="post">
        <input type="hidden" name="id" value="${contactUpd.id}" />
        <div class="form">
            <div class="title">Update Contact Info.</div>
            <div class="input-container">
                <input name="firstName" id="firstname" class="input" type="text" value="${contactUpd.firstName}" required />
                <label for="firstname" class="placeholder">First Name</label>
            </div>
            <div class="input-container">
                <input name="lastName" id="lastname" class="input" type="text" value="${contactUpd.lastName}" required />
                <label for="lastname" class="placeholder">Last Name</label>
            </div>
            <div class="input-container">
                <input name="email" id="email" class="input" type="email" value="${contactUpd.email}" required />
                <label for="email" class="placeholder">Email</label>
            </div>
            <div class="input-container">
                <input name="mobile" id="mobile" class="input" type="text" maxlength="10" value="${contactUpd.mobile}" required />
                <label for="mobile" class="placeholder">10 Digit Mobile Number</label>
            </div>
            <button type="submit" class="submit">Update Contact</button>
        </div>
    </form>
    ${msg}
</body>
</html>