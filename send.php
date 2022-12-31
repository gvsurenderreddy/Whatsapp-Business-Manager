<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Send Whatsapp Message</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
    <!--meta http-equiv="refresh" content="5"-->

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">



</head>
<body>
<!-- navbar -->

<?php include 'navbar.php'; ?>
<!-- Send page with 3 columns, left menu , middle main content form and other things, right menu essential links -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header">
                    <h5>Menu</h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item"><a href="index.php">Home</a></li>
                        <li class="list-group list-group-item"><a href="settings.php">Settings</a></li>
                        <li class="list-group list-group-item"><a href="send.php">Send</a></li>
                        <li class="list-group list-group-item"><a href="about.php">About</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-header">
                    <h5>Send Message</h5>
                </div>
                <!-- Constraints:
A text message can be a max of 4096 characters long.

-->

                <div class="card-body">
                    <form action="sendWA.php" method="post">
                        <div class="form-group row">
                            <label for="number" class="col-sm-2 col-form-label">Number</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="number" name="number" placeholder="Number">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="message" class="col-sm-2 col-form-label">Message</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="message" name="message" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header">
                    <h5>Links</h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item"><a href="https://www.whatsapp.com/">Whatsapp</a></li>
                        <li class="list-group list-group-item"><a href="https://www.python.org/">Python</a></li>
                        <li class="list-group list-group-item"><a href="https://www.seleniumhq.org/">Selenium</a></li>
                        <li class="list-group list-group-item"><a href="https://www.seleniumhq.org/projects/webdriver/">Selenium Webdriver</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<!--<footer class="page-footer font-small blue pt-4">
    <div class="container-fluid text-center text-md-left">
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3">
                <h5 class="text-uppercase">Footer Content</h5>
                <p>Here you can use rows and columns to organize your footer content.</p>
            </div>
            <hr class="clearfix w-100 d-md-none pb-3">
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Links</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Links</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid text-center text-md-left">
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3">
                <h5 class="text-uppercase">Footer Content</h5>
                <p>Here you can use rows and columns to organize your footer content.</p>
            </div>
            <hr class="clearfix w-100 d-md-none pb-3">
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Links</h5>
                <ul class = "list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Links</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>-->



</body>
</html>