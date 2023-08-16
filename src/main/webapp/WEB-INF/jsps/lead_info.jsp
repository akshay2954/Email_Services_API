
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Lead Information</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Reset default browser styles */
        body, h1, h2, p {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .profile-card {
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .profile-card header {
            margin-bottom: 20px;
        }

        .profile-card h1 {
            font-size: 24px;
            margin: 10px 0;
        }

        .profile-card h2 {
            font-size: 18px;
            margin-bottom: 20px;
            color: #666;
        }

        .profile-card .profile-bio p {
            font-size: 15px;
            margin-bottom: 5px;
        }

        .profile-card .profile-bio p:last-child {
            margin-bottom: 20px;
        }

        .profile-card .social {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .profile-card .social button {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .profile-card .social .convert-button:hover {
            background-color: #4CAF50;
        }

        .profile-card .social .delete-button:hover {
            background-color: #FF6347;
        }

        .profile-card .social .update-button:hover {
            background-color: #1E90FF;
        }

        .fa-user {
            font-size: 80px;
            color: #15172b;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="profile-card">
            <header>
                <i class="fas fa-user"></i>
                <h1>${lead.firstName} ${lead.lastName}</h1>
                <h2>${lead.email}</h2>
            </header>
            <div class="profile-bio">
                <p>Mobile:</p>
                <p>${lead.mobile}</p>
                <br>
                <p>Source:</p>
                <p>${lead.source}</p>
            </div>

            <div class="social">
                <form action="sendEmail" method="post">
                    <input type="hidden" name="email" value="${lead.email}" />
                    <button class="convert-button" type="submit">Send Email</button>
                </form>

                <form action="convertLead" method="post">
                    <input type="hidden" name="id" value="${lead.id}" />
                    <button class="convert-button" type="submit">Convert</button>
                </form>

                <a href="delete?id=${lead.id}">
                    <button class="delete-button" type="button">Delete</button>
                </a>

                <a href="update?id=${lead.id}">
                    <button class="update-button" type="button">Update</button>
                </a>
            </div>
        </div>
    </div>
</body>

</html>