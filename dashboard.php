<!DOCTYPE html>
<!-- 3 Column Whatsapp Intelligent Dashboard to manage, send and receive messages , setup auto responses-->
<!-- make 3 columns for dashboard left with all the menus with icons, middle with everything, right with essentials-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <!-- link custom stylesheet -->
    <link rel="stylesheet" href="css/style.css">

    <!--import fancy icons -->
    <script src="https://kit.fontawesome.com/6680624b05.js" crossorigin="anonymous"></script>
    <!--import jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--import popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <!--import bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!--import jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--import popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <!--import bootstrap -->
  <!--meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="3 Column Whatsapp Intelligent Dashboard to manage, send and receive messages , setup auto responses">
    <meta name="keywords" content="Whatsapp, Dashboard, Intelligent, Auto, Response, Send, Receive, Messages, Manage">
    <meta name="author" content="Gundo">

</head>
<body>
<!-- nav bar -->
<?php include 'navbar.php'; ?>
<br>
<br>
<!-- end nav bar -->
<!-- 3 column layout -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body position-fixed">
                    <h4 class="card-title text-center">Menu</h4>
                    <p class="card-text">
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item"><a href="dashboard.php">Dashboard</a></li>
                        <li class="list-group list-group-item"><a href="send.php">Send</a></li>
                        <li class="list-group list-group-item"><a href="receive.php">Receive</a></li>
                        <li class="list-group  list-group-item"><a href="auto.php">Auto</a></li>
                        <li class="list-group list-group-item"><a href="settings.php">Settings</a></li>
                    </ul>
                    </p>
                </div>
            </div>
        </div>
        <br>
        <div class="col-sm-6">

            <!-- start dashboard -->
            <!--Make a form to input whatsapp number and input text to send to whatsapp number via api with guzzle
            and then display the response in the middle column-->

            <div class="card">
                <div class="card-body">
                    <h4 class="card-title text-center">Publish to Whatsapp</h4>
                    <p class="card-text">
                    <form action="dashboard.php" method="post">
                        <div class="form-group row">
                            <label for="inputNumber" class="col-sm-2 col-form-label">Number</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputNumber" name="number" placeholder="Number">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputText" class="col-sm-2 col-form-label">Text</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputText" name="text" placeholder="Text">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </div>
                    </form>
                    </p>
                </div>
            </div>
            <br>
            <br>
            <!-- end dashboard -->
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title text-center">Dashboard</h4>
                    <p class="card-text">
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item">Total Messages Sent: 0</li>
                        <li class="list-group list-group-item">Total Messages Received: 0</li>
                        <li class="list-group list-group-item">Total Messages Auto Responded: 0</li>
                        <li class="list-group list-group-item">Total Messages Failed: 0</li>
                        <li class="list-group list-group-item">Total Messages Pending: 0</li>
                    </ul>
                    </p>
                </div>
            </div>
            <br>

            <!-- Slider -->
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title text-center"><b>How To Use</b></h4>
                    <p class="card-text"> <div id="demo" class="carousel slide" data-ride="carousel">

                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <!-- use random pexels image of a phone -->
                                <img src="https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Phone" width="1100" height="500">
<!--                                <img src="img/1.jpg" alt="Los Angeles" width="1100" height="500">-->
                            </div>
                            <div class="carousel-item">
                                <!--use random pexels image -->
                                <img src="https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Chicago" width="1100" height="500">
<!--                                <img src="img/2.jpg" alt="Chicago" width="1100" height="500">-->
                            </div>
                            <div class="carousel-item">
                                <!--use random pexels image -->
                                <img src="https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="New York" width="1100" height="500">
<!--                                <img src="img/3.jpg" alt="New York" width="1100" height="500">-->
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                    </p>
                </div>
            </div>
            <br>
            <!-- end slider -->
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title text-center">Dashboard</h4>
                    <div class="card">
                        <!-- make form to bulk send -->
                        <div class="card-body">
                            <h4 class="card-title text-center">Send</h4>
                            <!--Write description about functionality -->
                            <p class="card-text">
                            <form action="send.php" method="post">
                                <div class="form-group row">
                                    <label for="inputPassword" class="col-sm-2 col-form-label">Message</label>
                                    <div class="col-sm-10">
                                        <label for="messageInput"></label><textarea class="form-control" id="messageInput" placeholder="Message" name="message"></textarea>
                                    </div>



                                    <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label">Time</label>
                                        <div class="col-sm-10">
                                            <input type="datetime-local" class="form-control" id="inputPassword" placeholder="Time" name="time">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Send</button>
                                        </div>
                                    </div>
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                </div>
            </div>

        </div>
        <br>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body position-fixed">
                    <h4 class="card-title text-center">Essentials</h4>
                    <p class="card-text">
                 <!-- Make WA Intelligence Links with Fa icons -->
                    <ul class="list-group list-group-flush">
                        <li class="list-group list-group-item"><a href="https://wa.me/"><i class="fab fa-whatsapp"></i> WhatsApp</a></li>
                        <li class="list-group list-group-item"><a href="https://www.facebook.com/"><i class="fab fa-facebook"></i> Facebook</a></li>
                        <li class="list-group list-group-item"><a href="https://www.instagram.com/"><i class="fab fa-instagram"></i> Instagram</a></li>
                        <li class="list-group list-group-item"><a href="https://www.twitter.com/"><i class="fab fa-twitter"></i> Twitter</a></li>
                        <li class="list-group list-group-item"><a href="https://www.youtube.com/"><i class="fab fa-youtube"></i> YouTube</a></li>
                    </ul>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>






</body>
</html>