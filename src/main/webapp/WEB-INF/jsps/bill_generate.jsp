<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <title>Billing</title>
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="css/generateBillStyle.css" rel="stylesheet" media="all">
</head>
<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Billing</h2>
                    <form action="generateBill" method="post">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Invoice Date</label>
                                    <div class="input-group-icon">
                                        <input name="date" class="input--style-4 js-datepicker" type="text" name="birthday" required>
                                        <i class="zmdi zmdi-calendar-note input-icon jsbtn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Transaction Type</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            Credit <input type="radio" checked="checked" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Non-Credit <input type="radio" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">First Name</label>
                                    <input class="input--style-4" type="text" name="firstName" value="${contact.firstName}" readonly>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Last Name</label>
                                    <input class="input--style-4" type="text" name="last-Name" value="${contact.lastName}" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" value="${contact.email}" readonly>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="mobile" value="${contact.mobile}" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Product</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="product" required>
                                    <option disabled="disabled" selected="selected">Choose Product or Service</option>
                                    <option>Custom Software Development</option>
                                    <option>Web Hosting</option>
                                    <option>Website Development</option>
                                    <option>Cloud Storage</option>
                                    <option>Web Application Development</option>
                                    <option>Mobile Application Development</option>
                                    <option>Cloud Consulting</option>
                                    <option>DevOps Automation</option>
                                    <option>Software Prototyping</option>
                                    <option>Quality Assurance</option>
                                    <option>Systems Integration</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Price</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <input class="input--style-4" type="number" name="price" required>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Generate Bill</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>
    <script src="js/global.js"></script>
</body>
</html>