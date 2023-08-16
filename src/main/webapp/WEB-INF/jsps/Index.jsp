<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/nav_style.css">
    <style>
        body {
            margin: 0;
            padding: 0;
        }
        
        .area {
            height: 60px;
            background-color: #15172b;
        }
        
        .main-menu {
            background-color: #ffffff;
            border-right: 1px solid #e5e5e5;
            position: fixed;
            top: 0;
            left: 0;
            width: 200px;
            height: 100%;
        }
        
        .main-menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        
        .main-menu ul li {
            position: relative;
        }
        
        .main-menu ul li a {
            display: block;
            padding: 20px;
            color: #333333;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        
        .main-menu ul li a i {
            margin-right: 10px;
        }
        
        .main-menu ul li a:hover {
            background-color: #f5f5f5;
        }
        
        .main-menu .nav-text {
            display: inline-block;
            vertical-align: middle;
        }
        
        .logout {
            position: absolute;
            bottom: 0;
            width: 100%;
        }
        
        .logout li a {
            border-top: 1px solid #e5e5e5;
            color: #333333;
        }
        
        .logout li a:hover {
            background-color: #f5f5f5;
        }
        
        .logout li i {
            margin-right: 10px;
        }
        
        .content {
            margin-left: 200px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="area"></div>
    <nav class="main-menu">
        <ul>
            <li>
                <a href="/">
                    <i class="fa fa-edit"></i>
                    <span class="nav-text">Create Lead</span>
                </a>
            </li>
            <li class="has-subnav">
                <a href="leadsList">
                    <i class="fa fa-list fa-2x"></i>
                    <span class="nav-text">List of Leads</span>
                </a>
            </li>
            <li class="has-subnav">
                <a href="contactsList">
                    <i class="fa fa-phone"></i>
                    <span class="nav-text">List of Contacts</span>
                </a>
            </li>
            <li class="has-subnav">
                <a href="billsList">
                    <i class="fa fa-money"></i>
                    <span class="nav-text">List of Invoices</span>
                </a>
            </li>
            <li class="has-subnav">
                <a href="search">
                    <i class="fa fa-search"></i>
                    <span class="nav-text">Search</span>
                </a>
            </li>
            <li class="has-subnav">
                <a href="javanotes">
                    <i class="fa fa-book"></i>
                    <span class="nav-text">JAVA Notes by _M$A_</span>
                </a>
            </li>
        </ul>
        <ul class="logout">
            <li>
                <a href="#">
                    <i class="fa fa-power-off fa-2x"></i>
                    <span class="nav-text">Logout</span>
                </a>
            </li>
        </ul>
    </nav>
    <div class="content">
        <!-- Add your content here -->
    </div>
</body>
</html>