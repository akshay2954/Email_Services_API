
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <meta charset="UTF-8">
    <title>Update Lead</title>
    <style>
        /* Additional CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .form .title {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form .input-container {
            position: relative;
            margin-bottom: 20px;
        }

        .form .input-container .input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-bottom: 1px solid #ccc;
            background-color: transparent;
            transition: border-color 0.3s ease-in-out;
        }

        .form .input-container .input:focus {
            outline: none;
            border-color: #6c63ff;
        }

        .form .input-container .cut {
            position: relative;
            display: block;
            width: 100%;
            height: 10px;
        }

        .form .input-container .cut::after {
            content: "";
            position: absolute;
            display: block;
            width: 100%;
            height: 10px;
            background-color: #fff;
            bottom: -5px;
            z-index: 1;
        }

        .form .input-container .placeholder {
            position: absolute;
            top: 0;
            left: 0;
            font-size: 16px;
            padding: 10px;
            pointer-events: none;
            transition: top 0.3s ease-in-out, font-size 0.3s ease-in-out;
        }

        .form .input-container .input:focus + .cut::after,
        .form .input-container .input:valid + .cut::after {
            height: 20px;
        }

        .form .input-container .input:focus + .cut .placeholder,
        .form .input-container .input:valid + .cut .placeholder {
            top: -20px;
            font-size: 12px;
        }

        .form .submit {
            width: 100%;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #6c63ff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .form .submit:hover {
            background-color: #554eeb;
        }

        select.input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-bottom: 1px solid #ccc;
            background-color: transparent;
            transition: border-color 0.3s ease-in-out;
        }
    </style>
</head>
<body>
    <form action="updateLead" method="post">
        <input type="hidden" name="id" value="${leadUpd.id}" />
        <div class="form">
            <div class="title">Update Lead Info.</div>
            <div class="input-container ic1">
                <input name="firstName" id="firstname" class="input" type="text" value="${leadUpd.firstName}" required />
                <div class="cut"></div>
                <label for="firstname" class="placeholder">First Name</label>
            </div>
            <div class="input-container ic2">
                <input name="lastName" id="lastname" class="input" type="text" value="${leadUpd.lastName}" required />
                <div class="cut"></div>
                <label for="lastname" class="placeholder">Last Name</label>
            </div>
            <div class="input-container ic2">
                <input name="email" id="email" class="input" type="email" value="${leadUpd.email}" required />
                <div class="cut cut-short1"></div>
                <label for="email" class="placeholder">Email</label>
            </div>
            <div class="input-container ic2">
                <input name="mobile" id="mobile" class="input" type="text" maxlength="10" value="${leadUpd.mobile}" required />
                <div class="cut cut-short"></div>
                <label for="mobile" class="placeholder">10 Digit Mobile Number</label>
            </div>
            <div class="input-container ic2">
                <label for="source" class="placeholder"></label>
                <select name="source" id="source" class="input" required>
                    <option value="Google Ads">Google Ads</option>
                    <option value="Facebook">Facebook</option>
                    <option value="Twitter">Twitter</option>
                    <option value="News Paper">News Paper</option>
                    <option value="TV Commercial">TV Commercial</option>
                </select>
                <div class="cut cut-short2"></div>
                <label for="source" class="placeholder">Select Lead Source</label>
            </div>
            <button type="submit" class="submit">Update Lead</button>
        </div>
    </form>
</body>
</html>