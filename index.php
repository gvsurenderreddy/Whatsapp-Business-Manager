<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WhatsappMan</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!--import fancy icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--import jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--import bootstrap js -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.bundle.min.js.map"></script>
    <script src="js/bootstrap.bundle.js.map"></script>
    <!-- import a parralax library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/parallax/3.1.0/parallax.min.js"></script>
    <!--meta tags for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- SEO -->
    <meta name="description" content="WhatsappMan">
    <meta name="keywords" content="Whatsapp, Manager, WhatsappMan">
    <meta name="author" content="Gundo">
    <meta name="robots" content="index, follow">
    <meta name="revisit-after" content="7 days">
    <meta name="language" content="English">
    <meta name="theme-color" content="#000000">
    <meta name="msapplication-navbutton-color" content="#000000">
    <meta name="apple-mobile-web-app-status-bar-style" content="#000000">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="content-language" content="en">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="content-language" content="en">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
</head>
<body>
<!-- Build slick ui with  product showcase, sign up form that is powered by javascript, footer with sliding up animation -->

<?php include 'navbar.php'; ?>
<br>
<!-- pricings cards horizontal -->
<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Basic</h5>
                    <p class="card-text text-center">Get all the basic features with our basic plan.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Pro</h5>
                    <p class="card-text text-center">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Premium</h5>
                    <p class="card-text text-center">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end of pricings cards horizontal -->

<!-- small auto image slider -->

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/la.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/chicago.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/ny.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- end of small auto image slider -->

<!-- card with sign up form with all sign up options also include logos and symbols -->
<!--center card with sign up form -->

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title text-center">Sign Up</h5>
                                    <p class="card-text text-center">The beginning of something big </p>
                                    <a href="signup.php" class="btn btn-primary">Go Sign Up</a>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title text-center">Sign in</h5>
                                    <p class="card-text text-center">Welcome back</p>
                                    <a href="login.php" class="btn btn-primary">Go Sign in</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- end of card with sign up form with all sign up options also include logos and symbols -->



</body>
</html>