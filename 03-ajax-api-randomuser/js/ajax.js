// ouverture un function de Jquery:
// $(document).ready(function(){

// })
// window toujours pour evenement
// document pour get element id, class, attribute etc
window.addEventListener('load', function(){
    // alert('Hello');

    // url cible (ici l'url est celle de l'api)
    var cible = 'https://randomuser.me/api/';
    
    // Création de l'objet ajax, 
    if(window.XMLHttpRequest){ // si XMLHttpRequest existe
        var xhttp = new XMLHttpRequest();
    } else{
        var xhttp = new ActiveXObject('Microsoft.XMLHTTP'); 
        // Pour IE < version 9 >
    }

    xhttp.onreadystatechange = function(){
        if(xhttp.status == 200 && xhttp.readyState == 4){
            var reponse = JSON.parse(xhttp.responseText); 
            console.log(reponse);

            // affichage "civilité prénom nom"
            document.getElementById('titre').innerHTML ='<i class="far fa-thumbs-up"></i>' + ' ' + reponse.results[0].name.title + ' ' + reponse.results[0].name.first + ' '+reponse.results[0].name.last;
            // document.getElementById('titre').innerHTML = reponse.results[0]['name'].['title'] + ' ' + reponse.results[0].['name'].['first'] + ' '+reponse.results[0].['name'].['last'];

            // affichage "photo"
            document.getElementById('photo').src = reponse.results[0].picture.large;

            // affichage "email"
            document.getElementById('email').innerHTML = '<i class="fas fa-at"></i>:' + ' ' + reponse.results[0].email;

            // affichage "phone"
            document.getElementById('telephone').innerHTML = reponse.results[0].phone;

            // affichage "adresse"
            document.getElementById('adresse').innerHTML = reponse.results[0].location.street.number + ' ' +reponse.results[0].location.street.name + ' <br>' + reponse.results[0].location.postcode + ' '+ reponse.results[0].location.city + ' - <b> ' + reponse.results[0].location.country + '</b> '
            
            // correction de mathieu
            // document.getElementById('adresse').innerHTML = '<b>' + reponse.results[0].location.street.number + '</b> ' +reponse.results[0].location.street.name + '<br> ' + reponse.results[0].location.postcode + ' ' + reponse.results[0].location.city + ' - <b> ' + reponse.results[0].location.country + '</b> <i class="fas fa-address-card"></i>' ;

            // affichage "id"
            document.getElementById('pseudo').innerHTML = '<i class="far fa-address-card">:</i>'+ ' ' +reponse.results[0].id.value + ' ' + reponse.results[0].id.name;

        }
    }
    xhttp.open('get', cible);
    xhttp.send();
})