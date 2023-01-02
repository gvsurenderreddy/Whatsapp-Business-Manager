<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
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


</head>
<body>
<!-- navbar -->

<?php include 'navbar.php'; ?>
<!-- Jumbotron -->
<br>
<br>
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">WhatsappMan</h1>
            <p class="col-lg-10 fs-4">Contact Us</p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
     <!--Make contact form here-->
            <form class="p-4 p-md-5 border rounded-3 bg-light">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="floatingInput" placeholder="We will reach out to you">
                    <label for="floatingInput">Email address</label>

                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingPassword" placeholder="Your Name">
                    <label for="floatingPassword">Name</label>

                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingPassword"  placeholder="Your Message">
                    <label for="floatingPassword">Message</label>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Submit</button>
            </form>


        </div>
    </div>
</div>
<?php include 'promo.php'; ?>
<!-- Footer -->
<?php include 'footer.php'; ?>

</body>
</html>