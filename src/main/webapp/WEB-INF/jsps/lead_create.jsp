<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css">
    <style>
        /* Additional CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        .input-container {
            position: relative;
            margin-bottom: 20px;
        }

        .input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .placeholder {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            pointer-events: none;
            color: #888;
            transition: all 0.2s ease-out;
        }

        .input:focus + .placeholder,
        .input:not(:placeholder-shown) + .placeholder {
            top: 0;
            font-size: 12px;
            transform: translateY(0);
            color: #333;
        }

        .cut {
            position: relative;
            height: 20px;
            width: 100%;
            margin-top: -20px;
            pointer-events: none;
            z-index: 1;
        }

        .cut:before,
        .cut:after {
            content: "";
            position: absolute;
            background-color: #fff;
            height: 20px;
            width: calc(50% + 1px);
            z-index: -1;
        }

        .cut:before {
            right: 50%;
        }

        .cut:after {
            left: 50%;
        }

        .submit {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    <meta charset="UTF-8">
    <title>Create Lead</title>
</head>
<body class="bg-gray-100">
    <div class="container mx-auto px-4 py-8">
        <form action="saveLead" method="post" class="form">
            <div class="title">Create Lead</div>
            <div class="input-container ic1">
                <input name="firstName" id="firstname" class="input bg-gray-200 px-4 py-2 rounded-lg focus:outline-none focus:bg-white" type="text" required />
                <div class="cut"></div>
                <label for="firstname" class="placeholder">First Name</label>
            </div>
            <div class="input-container ic2">
                <input name="lastName" id="lastname" class="input bg-gray-200 px-4 py-2 rounded-lg focus:outline-none focus:bg-white" type="text" required />
                <div class="cut"></div>
                <label for="lastname" class="placeholder">Last Name</label>
            </div>
            <div class="input-container ic2">
                <input name="email" id="email" class="input bg-gray-200 px-4 py-2 rounded-lg focus:outline-none focus:bg-white" type="email" required />
                <div class="cut cut-short1"></div>
                <label for="email" class="placeholder">Email</label>
            </div>
            <div class="input-container ic2">
                <input name="mobile" id="mobile" class="input bg-gray-200 px-4 py-2 rounded-lg focus:outline-none focus:bg-white" type="text" minlength="10" maxlength="10" required />
                <div class="cut cut-short"></div>
                <label for="mobile" class="placeholder">10 Digit Mobile Number</label>
            </div>
            <div class="input-container ic2">
                <label for="source" class="placeholder"></label>
                <select name="source" id="source" class="input bg-gray-200 px-4 py-2 rounded-lg focus:outline-none focus:bg-white" required>
                    <option value="Google Ads">Google Ads</option>
                    <option value="Facebook">Facebook</option>
                    <option value="Twitter">Twitter</option>
                    <option value="News Paper">News Paper</option>
                    <option value="TV Commercial">TV Commercial</option>
                </select>
                <div class="cut cut-short2"></div>
                <label for="source" class="placeholder">Select Lead Source</label>
            </div>
            <button type="submit" class="submit">Create Lead</button>
        </form>
    </div>
</body>
</html>