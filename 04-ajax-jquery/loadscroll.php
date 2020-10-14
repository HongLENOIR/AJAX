<?php



// Connexion à la BDD:
$host = 'mysql:host=localhost;dbname=loadscroll';
$login = 'root';
$password = '';
$options = array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
);
$pdo = new PDO($host, $login, $password, $options);

$recup_image = $pdo->query("SELECT * FROM image LIMIT 0, 10");


?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ajax jQuery LoadScroll</title>
        <link rel="stylesheet" href="css/style.css">
        <!-- Google Fonts Playfair Display -->
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@1&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="conteneur">
            <h1>Mes images</h1>
            <hr>
            <div id="affichage">
                <?php
                    while($image = $recup_image->fetch(PDO::FETCH_ASSOC)){
                        echo '<div class="image"><div>';
                        echo '<img src="' . $image['url'] . '" alt="' . $image['alt']. '" title="' . $image['title'] . '">';
                        echo '</div></div>';
                    }
                ?>

            </div>

        </div>    

        <script
        src="http://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
        <script src="js/ajax.js"></script>
    </body>
</html>