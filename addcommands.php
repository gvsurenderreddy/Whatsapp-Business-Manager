
<?php
error_reporting(0);
/** Check if submit button was clicked */
if (isset($_POST['submit'])) {
    /** Handle Input And Output Strings submitted by addcommands.php */

    /** Get variables from self */
    $userInput = "My name is Borat Sagdiyev and I am from Kazakhstan and I am a very nice person";
    $userOutput = "What are you doing in my swamp? and what the fuck is  wrong ";
    $time = time();


    /** Store To Database
     *
     */
    $host = 'localhost:24003';
    $db   = 'gundo';
    $user = 'gundo';
    $pass = 'gundo';
    $port = "3306";
    $charset = 'utf8mb4';

    $options = [
        \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
        \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
        \PDO::ATTR_PERSISTENT => true,
        \PDO::ATTR_EMULATE_PREPARES   => false,
    ];

    $dsn = "mysql:host=$host;dbname=$db;charset=$charset;port=$port;";
    try {

        $pdo = new \PDO($dsn, $user, $pass, $options);
        //Show the connection status
        /** Insert to bot table */
        if (empty($userInput) || empty($userOutput)) {
            /** Generate random values */
          //  $userInput = rand(1000000000, 9999999999);
            $userInput = substr(str_shuffle("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 10);

            /**Generate random letters and words */
            $userOutput = substr(str_shuffle("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 10);
        }
        $insert = $pdo->prepare("INSERT INTO bot (input, reply,timestamp) VALUES (:input, :output,:time)");
        $insert->bindParam(':input', $userInput);
        $insert->bindParam(':output', $userOutput);
        $insert->bindParam(':time', $time);
        $insert->execute();
        //Print all the submitted values
        echo "The user number is $userInput and the user message is $userOutput /n";
        if (!$insert) {
        } else {
            echo "Command Added Successfully";
        }

    } catch (\PDOException $e) {
//    throw new \PDOException($e->getMessage(), (int)$e->getCode());
        $errorMessage = new \PDOException($e->getMessage(), (int)$e->getCode());
        echo $errorMessage;
    }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Create Commands & Save</title>

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
                <h1 class="h2">Set Up Commands</h1>
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
            <!-- Table To Display all the commands in the database -->
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Input</th>
                        <th>Output</th>
                        <th>Timestamp</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    /**
                     * @return void
                     */
                    function getCommands(): void
                    {
                        $host = 'localhost:24003';
                        $db = 'gundo';
                        $user = 'gundo';
                        $pass = 'gundo';
                        $port = "3306";
                        $charset = 'utf8mb4';

                        $options = [
                            \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
                            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
                            \PDO::ATTR_PERSISTENT => true,
                            \PDO::ATTR_EMULATE_PREPARES => false,
                        ];

                        $dsn = "mysql:host=$host;dbname=$db;charset=$charset;port=$port;";
                        try {

                            $pdo = new \PDO($dsn, $user, $pass, $options);
                            //Show the connection status
                            /** Insert to bot table */
                            $select = $pdo->prepare("SELECT * FROM bot");
                            $select->execute();
                            $result = $select->fetchAll();

                        } catch (\PDOException $e) { //Catch any errors
                            $thrownError = new \PDOException($e->getMessage(), (int)$e->getCode());
                            echo $thrownError;
                        }
                    }

                    getCommands();

                    foreach ($result as $row) {
                        echo "<tr>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td>" . $row['input'] . "</td>";
                        echo "<td>" . $row['reply'] . "</td>";
                        echo "<td>" . $row['timestamp'] . "</td>";
                        echo "</tr>";
                    }
                    ?>


            <div class="card-body">
                /** process form to self */
                <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                    <div class="form-group row">
                        <label for="input" class="col-sm-2 col-form-label">Input</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="input" name="input" placeholder="input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="message" class="col-sm-2 col-form-label">Output</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="output" name="output" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button id="submit" name="submit" type="submit" class="btn btn-primary">Send</button>
                        </div>
                    </div>
                </form>
            </div>
            <!--- Main Content -->
        </main>
    </div>
</div>


<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
</body>
</html>
