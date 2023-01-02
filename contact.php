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

<!-- Contact Form -->

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

                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-4">Contact Us</h1>
                    <p class="lead">If you have any questions or concerns, please contact us.</p>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5>Contact Us</h5>
                </div>

                <div class="card-body">
                    <form action="contact.php" method="post">
                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
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
                    <h5>Essential Links</h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item"><a href="https://www.facebook.com/">Facebook</a></li>
                        <li class="list-group list-group-item"><a href="https://www.instagram.com/">Instagram</a></li>
                        <li class="list-group list-group-item"><a href="https://www.twitter.com/">Twitter</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<?php include 'footer.php'; ?>

</body>
</html>