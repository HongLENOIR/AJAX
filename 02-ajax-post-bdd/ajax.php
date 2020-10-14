<?php
// json_encode() permet de transformer un tableau array en format JSON
// json-decode() permet de transforer un format JSON en tableau array

// echo '<pre>'; print_r($_POST); echo '</pre>';

// Connexion à la BDD:
$host = 'mysql:host=localhost;dbname=entreprise';
$login = 'root';
$password = '';
$options = array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
);
$pdo = new PDO($host, $login, $password, $options);


//  on prépare le tableau array qui contiendra la réponse : 
$tab = array();
$tab['tableau'] = ''; // on prépare l'indice du tableau array qui contiendra la réponse
$tab['test'] = ''; 

// on test l'existence de l'argument attendu dans POST envoyé via la variable param de l'ajax
if(isset($_POST['id_employes'])){ // choisir indice id_employes prédéfini par js avec la ligne: var param = 'id_employes=' + valeur;
    $id_employes = $_POST['id_employes'];

    // on récupère les informations en BDD
    $recup_infos = $pdo->prepare("SELECT * FROM employes WHERE id_employes = :id_employes"); // prepare totalement sécurité et évider changement dans la code via inspecter
    $recup_infos->bindParam(':id_employes', $id_employes, PDO::PARAM_STR);
    $recup_infos->execute();

    // on vérifie si on a récupéré une ligne:
    if($recup_infos->rowCount()>0){
        $info = $recup_infos->fetch(PDO::FETCH_ASSOC);

        // on construit le tableau html de la réponse
        //$tab['tableau'] =$tab['tableau'] + '<tr>';
        $tab['tableau'] .= '<table border="1">';
        $tab['tableau'] .= '<tr>';
        $tab['tableau'] .= '<th>Id Employé</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Salaire</th>
                            <th>Service</th>
                            <th>Sexe</th>
                            <th>Date d\'embauche</th>';
        $tab['tableau'] .= '</tr>';
        $tab['tableau'] .= '<tr>';
        $tab['tableau'] .= '<td>' . $info['id_employes'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['nom'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['prenom'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['salaire'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['service'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['sexe'] .'</td>';
        $tab['tableau'] .= '<td>' . $info['date_embauche'] .'</td>';
        $tab['tableau'] .= '</tr></table>';
        $tab['test'] .= '<h2 style="color:blue;">' . $info['nom'] .' '. $info['prenom'].'</h2>';

    }else{
        $tab['tableau'] = 'Erreur, veuillez recommencer';
    }
}

// on affiche la réponse
echo json_encode($tab);
