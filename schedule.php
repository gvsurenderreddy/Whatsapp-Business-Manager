<!--- Schedule Message, Send Message, Send Image page should look like admin.php with tabs for sending text , message, search users, data intergration --->
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Admin</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">





    <link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">

    <link href="css/dashboard.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<?php include 'header.php';?>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3 sidebar-sticky">
                <?php include 'sidebar.php';?>
            </div>
    </div>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Dashboard</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
                <div class="btn-group me-2">
                    <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                </div>
                <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                    <span data-feather="calendar" class="align-text-bottom"></span>
                    This week
                </button>
            </div>
        </div>
        <!--- Main Content -->
<!--- Schedule Message, Send Message, Send Image page should look like admin.php with tabs for sending text , message, search users, data intergration --->
        <h2>Schedule Messages</h2>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Schedule Message</h3>
                </div>
                <div class="panel-body text-center">
                    <form action="schedule.php" method="post">
                        <div class="form-group col-md-12">
                            <label for="message">Message</label>
                            <textarea name="message" id="message" class="form-control" rows="5" placeholder="Enter your message here"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="date">Date</label>
                            <input type="date" name="date" id="date" class="form-control">
                        </div>
                        <div class="form-group col-md-12">
                            <label for="time">Time</label>
                            <input type="time" name="time" id="time" class="form-control">
                        </div>
                        <div class="form-group col-md-12">
                            <label for="timezone">Timezone</label>
                            <select name="timezone" id="timezone" class="form-control">
                                <option value="Pacific/Midway">(GMT-11:00) Midway Island, Samoa</option>
                                <option value="America/Adak">(GMT-10:00) Hawaii-Aleutian</option>
                                <option value="Etc/GMT+10">(GMT-10:00) Hawaii</option>
                                <option value="Pacific/Marquesas">(GMT-09:30) Marquesas Islands</option>
                                <option value="Pacific/Gambier">(GMT-09:00) Gambier Islands</option>
                                <option value="America/Anchorage">(GMT-09:00) Alaska</option>
                                <option value="America/Ensenada">(GMT-08:00) Tijuana, Baja California</option>
                                <option value="Etc/GMT+8">(GMT-08:00) Pitcairn Islands</option>
                                <option value="America/Los_Angeles">(GMT-08:00) Pacific Time (US & Canada)</option>
                                <option value="America/Denver">(GMT-07:00) Mountain Time (US & Canada)</option>
                                <option value="America/Chihuahua">(GMT-07:00) Chihuahua, La Paz, Mazatlan</option>
                                <option value="America/Dawson_Creek">(GMT-07:00) Arizona</option>
                                <option value="America/Belize">(GMT-06:00) Saskatchewan, Central America</option>
                                <option value="America/Cancun">(GMT-06:00) Guadalajara, Mexico City, Monterrey</option>
                                <option value="Chile/EasterIsland">(GMT-06:00) Easter Island</option>
                                <option value="America/Chicago">(GMT-06:00) Central Time (US & Canada)</option>
                                <option value="America/New_York">(GMT-05:00) Eastern Time (US & Canada)</option>
                                <option value="America/Havana">(GMT-05:00) Cuba</option>
                                <option value="America/Bogota">(GMT-05:00) Bogota, Lima, Quito, Rio Branco</option>
                                <option value="America/Caracas">(GMT-04:30) Caracas</option>
                                <option value="America/Santiago">(GMT-04:00) Santiago</option>
                                <option value="America/La_Paz">(GMT-04:00) La Paz</option>
                                <option value="Atlantic/Stanley">(GMT-04:00) Faukland Islands</option>
                                <option value="America/Campo_Grande">(GMT-04:00) Brazil</option>
                                <option value="America/Goose_Bay">(GMT-04:00) Atlantic Time (Goose Bay)</option>
                                <option value="America/Glace_Bay">(GMT-04:00) Atlantic Time (Canada)</option>
                                <option value="America/St_Johns">(GMT-03:30) Newfoundland</option>
                                <option value="America/Araguaina">(GMT-03:00) UTC-3</option>
                                <option value="America/Montevideo">(GMT-03:00) Montevideo</option>
                                <option value="America/Miquelon">(GMT-03:00) Miquelon, St. Pierre</option>
                                <option value="America/Godthab">(GMT-03:00) Greenland</option>
                                <option value="America/Argentina/Buenos_Aires">(GMT-03:00) Buenos Aires</option>
                                <option value="America/Sao_Paulo">(GMT-03:00) Brasilia</option>
                                <option value="America/Noronha">(GMT-02:00) Mid-Atlantic</option>
                                <option value="Atlantic/Cape_Verde">(GMT-01:00) Cape Verde Is.</option>
                                <option value="Atlantic/Azores">(GMT-01:00) Azores</option>
                                <option value="Europe/Belfast">(GMT) Greenwich Mean Time : Belfast</option>
                                <option value="Europe/Dublin">(GMT) Greenwich Mean Time : Dublin</option>
                                <option value="Europe/Lisbon">(GMT) Greenwich Mean Time : Lisbon</option>
                                <option value="Europe/London">(GMT) Greenwich Mean Time : London</option>
                                <option value="Africa/Abidjan">(GMT) Monrovia, Reykjavik</option>
                                <option value="Europe/Amsterdam">(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</option>
                                <option value="Europe/Belgrade">(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague</option>
                                <option value="Europe/Brussels">(GMT+01:00) Brussels, Copenhagen, Madrid, Paris</option>
                                <option value="Africa/Algiers">(GMT+01:00) West Central Africa</option>
                                <option value="Africa/Windhoek">(GMT+01:00) Windhoek</option>
                                <option value="Asia/Beirut">(GMT+02:00) Beirut</option>
                                <option value="Africa/Cairo">(GMT+02:00) Cairo</option>
                                <!-- End of Africa -->
                            </select>
                        </div>
                     <div class="form-group col-md-12">
                            <label for="timezone">User Group</label>
                            <select name="usergroup" id="usergroup" class="form-control">
                                <option value="1">Admin</option>
                                <option value="2">User</option>
                            </select>
                        </div>
            <!--Submit wide Button-->
            <div class="form-group col-md-12">
                <button type="submit" class="btn btn-outline-secondary btn-lg px-100">Submit</button>
            </div>


                    </form>
                </div>
            </div>
        </div>
    </div>


        <!--- Main Content -->
    </main>
</div>
</div>


<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
</body>
</html>
