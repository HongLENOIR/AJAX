
// Mise en place d'un évènement change sur l'élément html ayant l'id "employes" (ici le champ select) 
document.getElementById('employes').addEventListener('change',function(){
    // Dans un évènement, le mot clé this représente l'élément html ayant reçu l'évènement
    var valeur = this.value; //(this.valuer permet de récupérer la valeur du champ concerné)
    var title = this.title; //(this.valuer permet de récupérer la valeur du champ concerné)
    var alt = this.getAttribute('date-alt'); //(this.valuer permet de récupérer la valeur du champ concerné)
    var src = this.getAttribute('date-src'); //(this.valuer permet de récupérer la valeur du champ concerné)
    console.log(valeur);
    console.log(alt);
    console.log(src);
    console.log(title);


    // url cible
    var cible = 'ajax.php';

    // Création de l'objet ajax, 
    // ma note: window=>ongle acutel de navigatoire.
    // document etc,ces objets ne sont jamais exists par défaut, il faut toujours créer l'objet de l'instance; 'new'->créer l'objet, après, on appelle cet objet, les elements dans cet objet comme 
    if(window.XMLHttpRequest){ // si XMLHttpRequest existe
        var xhttp = new XMLHttpRequest();
    } else{
        var xhttp = new ActiveXObject('Microsoft.XMLHTTP'); 
        // Pour IE < version 9 >
    }

    // on prépare le ou les argument(s) à fournir dans POST
    // indice1 = valeur1 & indice2=valeur2 & ...
    var param = 'id_employes=' + valeur;
    console.log(param);

    // on prépare la requete ajax
    xhttp.open('POST', cible);
    // la ligne suivante est obligatoire en méthode POST, et il est obligatoire d'appeler cette ligne après la méthode open()
    // listé dans le doc developer.mozilla.org/fr/docs/Web/Guide/AJAX/Premiers_pas
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded'); // en POST, obligatoire de mettre cette ligne de code

    // l'évènement lié au changement de statut sur readyState
    xhttp.onreadystatechange = function(){
        if(xhttp.status == 200 && xhttp.readyState == 4){
            console.log(xhttp.responseText);

            // la réponse sera au format json donc pour que js le récupère sous forme d'objet, nous devons appliquer un parse
            var reponse = JSON.parse(xhttp.responseText); // vené via ajax.php la ligne: echo json_encode($tab);
            // on transforme la réponse sous forme d'objet JS
            console.log(reponse);

            // ici on définit l'indice 

            // on place dans le div id="resultat" le code html obtenu.
            // l'indice tableau provient du script php (voir sur ajax.php)
            document.getElementById('resultat').innerHTML = reponse.tableau; // ici tableau n'existe pas, on va créer dans ajax.php
            document.getElementById('resultat2').innerHTML = reponse.test; // ici tableau n'existe pas, on va créer dans ajax.php
        }
    }

    // on envoie la demande avec les paramètres attendus que l'on retrouvera côté PHP dans $_post
    xhttp.send(param);
    // on fait pas grande chose (avec Ajax), mais juste améliorer l'utilisation confort de l'utilisateur
});
