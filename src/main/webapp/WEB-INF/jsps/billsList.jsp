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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css">
    <meta charset="ISO-8859-1">
    <title>All Bills</title>
</head>
<body class="bg-gray-100">
    <div class="container mx-auto px-4 py-8">
        <table class="w-full bg-white shadow-md rounded-lg">
            <thead class="bg-gray-200">
                <tr>
                    <th class="py-4 px-6 text-gray-600 font-semibold">#</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold">CLIENT</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold">EMAIL</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold">MOBILE</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold">PRODUCT</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold">AMOUNT</th>
                    <th class="py-4 px-6 text-gray-600 font-semibold" colspan="2">ACTION</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="bill" items="${bills}">
                    <tr class="hover:bg-gray-100">
                        <td class="py-4 px-6 text-center"><a href="billInfo?invoiceNo=${bill.invoiceNo}">${bill.invoiceNo}</a></td>
                        <td class="py-4 px-6">${bill.firstName}${bill.lastName}</td>
                        <td class="py-4 px-6">${bill.email}</td>
                        <td class="py-4 px-6">${bill.mobile}</td>
                        <td class="py-4 px-6">${bill.product}</td>
                        <td class="py-4 px-6">${bill.price}</td>
                        <td class="py-4 px-6">
                            <a href="billInfo?invoiceNo=${bill.invoiceNo}" class="text-indigo-600 hover:text-indigo-900 font-semibold">View</a>
                        </td>
                        <td class="py-4 px-6">
                            <a href="deleteBill?invoiceNo=${bill.invoiceNo}" class="text-red-600 hover:text-red-900 font-semibold">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>