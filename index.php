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
<br>

<!-- main content -->
<!-- PRODUCT COMING SOON BANNER -->
<div class="p-5 mb-4 bg-light rounded-3">
    <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">WhatsappMan</h1>
        <p class="col-md-8 fs-4">WhatsappMan is a Whatsapp Manager that allows you to send messages to your contacts.</p>
        <a href="signup.php"> <button class="btn btn-primary btn-lg" type="button">Signup</button></a>
    </div>
</div>
<article class="my-3" id="carousel">
    <div class="bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        <h3>Features</h3>
    </div>

    <div>
        <div class="bd-example-snippet bd-code-snippet"><div class="bd-example">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text></svg>
                            <div class="carousel-caption d-none d-md-block">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title text-center">Basic</h5>
                                        <p class="card-text text-center">Get all the basic features with our basic plan.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#666"></rect><text x="50%" y="50%" fill="#444" dy=".3em">Second slide</text></svg>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item active">
                            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#555"></rect><text x="50%" y="50%" fill="#333" dy=".3em">Third slide</text></svg>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div></div>

    </div>
</article>
<!-- PRODUCT COMING SOON BANNER -->
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
<!--- Compare Plans Table -->
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Feature</th>
                    <th scope="col">Basic</th>
                    <th scope="col">Pro</th>
                    <th scope="col">Premium</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Whatsapp</th>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
                <tr>
                    <th scope="row">Whatsapp</th>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
                <tr>
                    <th scope="row">Whatsapp</th>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
                <tr>
                    <th scope="row">Whatsapp</th>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
                <!-- end of table -->
                </tbody>
            </table>
        </div>
    </div>
</div>
<!--- End of Compare Plans Table -->
<br>
<br>
<br>

<!--- Slide show with words about the product -->
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">WhatsappMan</h5>
                    <p class="card-text text-center">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<br>
<!--- Slide show with words about the product -->


<!--<div class="container">-->
<!--    <div class="row">-->
<!--        <div class="col-sm-12">-->
<!--            <div class="card">-->
<!--                <div class="card-body">-->
<!--                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">-->
<!--                        <ol class="carousel-indicators">-->
<!--                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>-->
<!--                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>-->
<!--                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>-->
<!--                        </ol>-->
<!--                        <div class="carousel-inner">-->
<!--                            <div class="carousel-item active">-->
<!--                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/la.jpg" alt="First slide">-->
<!--                            </div>-->
<!--                            <div class="carousel-item">-->
<!--                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/chicago.jpg" alt="Second slide">-->
<!--                            </div>-->
<!--                            <div class="carousel-item">-->
<!--                                <img class="d-block w-100" src="https://www.w3schools.com/bootstrap4/ny.jpg" alt="Third slide">-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">-->
<!--                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<!--                            <span class="sr-only">Previous</span>-->
<!--                        </a>-->
<!--                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">-->
<!--                            <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<!--                            <span class="sr-only">Next</span>-->
<!--                        </a>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!---->
<!--</div>-->
<!--<br>-->
<!--<br>-->
<!--<br>-->
<!-- end of small auto image slider -->

<!-- card with sign up form with all sign up options also include logos and symbols -->
<!--center card with sign up form -->

<div class="container">
    <div class="row align-items-md-stretch">
        <div class="col-md-6">
            <div class="h-100 p-5 text-bg-dark rounded-3">
                <h2>Sign Up</h2>
                <p>This is the beginning of something big!</p>
                <a href="signup.php" >   <button class="btn btn-outline-light" type="button">Go Signup</button></a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="h-100 p-5 bg-light border rounded-3">
                <h2>Sign In</h2>
                <p>Welcome back to your reliable and trusted Whatsapp for business manager</p>
                <a href="login.php" > <button class="btn btn-outline-secondary" type="button">Go Signin</button></a>
            </div>
        </div>
    </div>
</div>



<!-- end of card with sign up form with all sign up options also include logos and symbols -->



</body>
</html>