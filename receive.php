<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Replies</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <!-- link custom stylesheet -->


    <!--import fancy icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

    <!-- SEO -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="3 Column Whatsapp Intelligent Dashboard to manage, send and receive messages , setup auto responses">
    <meta name="keywords" content="Whatsapp, Dashboard, Intelligent, Auto, Response, Send, Receive, Messages, Manage">
    <meta name="author" content="Gundo">

</head>
<body>
<!-- nav bar -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
    <!-- Brand -->
    <a class="navbar-brand" href="#">WA Intelligence</a>

    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="index.php">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
        </ul>
    </div>
</nav>

<!-- main content -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <h1>Replies</h1>
            <p>Here are the replies you have received</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Message</th>
                    <th>Reply</th>
                    <th>Time</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "whatsapp";

                // Create connection

                $conn = new mysqli($servername, $username, $password, $dbname);
                // Check connection

                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                $sql = "SELECT * FROM replies";

                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row

                    while($row = $result->fetch_assoc()) {
                        echo "<tr><td>" . $row["message"]. "</td><td>" . $row["reply"]. "</td><td>" . $row["time"]. "</td></tr>";
                    }
                } else {
                    echo "0 results";
                }

                $conn->close();

                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- footer -->

<footer class="page-footer font-small blue pt-4">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

                <!-- Content -->
                <h5 class="text-uppercase">Footer Content</h5>
                <p>Here you can use rows and columns to organize your footer content.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
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
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
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
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <hr>

    <!-- Call to action -->
    <ul class="list-unstyled list-inline text-center py-2">
        <li class="list-inline-item">
            <h5 class="mb-1">Register for free</h5>
        </li>
        <li class="list-inline-item">
            <a href="#!" class="btn btn-danger btn-rounded">Sign up!</a>
        </li>
    </ul>
    <!-- Call to action -->

    <hr>

    <!-- Social buttons -->



</body>
</html>