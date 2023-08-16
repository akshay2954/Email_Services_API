<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill Information</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bill_info.css">
</head>
<body>
    <div id="invoice" class="container">
        <div class="toolbar hidden-print">
            <div class="text-left">
                <a href="/">
                    <button class="btn btn-info">
                        <i class="fa fa-file-pdf-o"></i> Home
                    </button>
                </a>
                <button id="printInvoice" class="btn btn-info">
                    <i class="fa fa-print"></i> Download/Print
                </button>
            </div>
            <hr>
        </div>
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">
                <header>
                    <div class="row">
                        <div class="col">
                            <a target="_blank" href="https://www.pankajsiracademy.in/">
                                <img src="images/logo.png" data-holder-rendered="true" />
                            </a>
                        </div>
                        <div class="col company-details">
                            <h2 class="name">
                                <a target="_blank" href="https://www.pankajsiracademy.in/">Pankaj Sir Academy</a>
                            </h2>
                            <div class="address">BTM Layout, 2nd Floor, Bangalore</div>
                            <div class="phone">(+91) 9632882052</div>
                            <div class="email">pankaj@pankajsiracademy.com</div>
                        </div>
                    </div>
                </header>
                <main>
                    <div class="row contacts">
                        <div class="col invoice-to">
                            <div class="text-gray-light">INVOICE TO:</div>
                            <h2 class="to">${bill.firstName} ${bill.lastName}</h2>
                            <div class="address">Mobile: ${bill.mobile}</div>
                            <div class="email">
                                Email: <a href="mailto:${bill.email}">${bill.email}</a>
                            </div>
                        </div>
                        <div class="col invoice-details">
                            <h1 class="invoice-id">INVOICE: ${bill.invoiceNo}</h1>
                            <div class="date">Date of Invoice: ${bill.date}</div>
                            <div class="date">Due Date: 30/10/2022</div>
                        </div>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class="text-center">PRODUCT</th>
                                <th class="text-center">PRICE</th>
                                <th class="text-center">QUANTITY</th>
                                <th class="text-center">TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="no">01</td>
                                <td class="text-left">
                                    <h3>${bill.product}</h3>
                                    Creating a recognizable design solution based on the company's existing visual identity
                                </td>
                                <td class="unit">Rs. ${bill.price}</td>
                                <td class="qty">1</td>
                                <td class="total">Rs. ${bill.price}</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2">SUBTOTAL</td>
                                <td>Rs. ${bill.price}</td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2">TAX 25%</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2">GRAND TOTAL</td>
                                <td>Rs. ${bill.price}</td>
                            </tr>
                        </tfoot>
                    </table>
                    <div class="thanks">Thank you!</div>
                    <div class="notices">
                        <div>NOTICE:</div>
                        <div class="notice">This bill was generated by _M$A_ in Major Project for the fulfillment of the certification in "Full Stack Web Development".</div>
                    </div>
                </main>
                <footer>
                    Contact us: mdsyedaalam@gmail.com
                </footer>
            </div>
            <div></div>
        </div>
    </div>
</body>
</html>