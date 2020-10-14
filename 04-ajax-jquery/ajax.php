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

$recup_image = $pdo->query("SELECT * FROM image LIMIT 10, 10");

$tab = array();
$tab['images'] = '';

while($image = $recup_image->fetch(PDO::FETCH_ASSOC)){
   $tab['images'] .= '<div class="image"><div>';
   $tab['images'] .=  '<img src="' . $image['url'] . '" alt="' . $image['alt']. '" title="' . $image['title'] . '">';
   $tab['images'] .= '</div></div>';
}
echo json_encode($tab);

