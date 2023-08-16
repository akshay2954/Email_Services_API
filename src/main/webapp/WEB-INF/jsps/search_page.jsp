<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/search_style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="search-form">
            <form action="searchLead" method="post" class="form">
                <div class="input-group">
                    <input id="leadId" name="id" type="text" class="input-field" placeholder="Enter Lead ID#" required />
                    <div class="input-group-append">
                        <button class="btn-submit" type="submit">SEARCH LEAD</button>
                    </div>
                </div>
            </form>
            <form action="searchContact" method="post" class="form">
                <div class="input-group">
                    <input id="contactId" name="id" type="text" class="input-field" placeholder="Enter Contact ID#" required />
                    <div class="input-group-append">
                        <button class="btn-submit" type="submit">SEARCH CONTACT</button>
                    </div>
                </div>
            </form>
            <form action="billInfo" method="post" class="form">
                <div class="input-group">
                    <input id="invoiceNo" name="invoiceNo" type="text" class="input-field" placeholder="Enter Invoice Number" required />
                    <div class="input-group-append">
                        <button class="btn-submit" type="submit">SEARCH BILL</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>