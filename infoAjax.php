<!-- 
AJAX: plusieurs taches ensemble

Asynchonous
Javascript
And
Xml : format de données, structuration de données, 

maintenant plutot: AJAJ plus utiliser!
Asynchonous
Javascript
And
Json(Javascript Object Notation) https://json.org/json-fr.html
JSON 是一种轻量级的数据交换格式。 易于人阅读和编写。同时也易于机器解析和生成。 它基于JavaScript Programming Language, Standard ECMA-262 3rd Edition - December 1999的一个子集。 JSON采用完全独立于语言的文本格式，但是也使用了类似于C语言家族的习惯（包括C, C++, C#, Java, JavaScript, Perl, Python等）。 这些特性使JSON成为理想的数据交换语言。
Json: format de donnée lié js et php
data.gouv.fr 

url de php avec BDD, js récuper l'affichage de page en format json,  utilisateur n'appercoit pas le changement
format ne change pas avec le meme indice, mais quel qu'on fait la réponse!!!

 --- AJax 2020-09-29
// js (front) active ne cherche pas la recharge de page
// PHP(back) recharge toujours la page, Ajax est conforme de l'utilisateur, pour ne recharge pas BDD pour perdre tous les BDD à chercher!
// AJAX un javascript, demande au navigateur d'appeler un page invisiblement de BDD, une fois la page affiche, js récupe la réponse url (la page demandé), rajouter dans le page affiché front

Ajax, on peut voir sur inspecter->network(réseaux) apercu reponse(le résultat)
appel ajax, comme type=xhr ou jpeg etc

chrome play dinosaur game how to launch, chrome| chrome://dino

entre balise script, jamais des codes, parce que src prendre tous les code dans le fichier .js, écraser tous les info entre <script></script> 

developer.mozilla.org/fr/docs/Web/Guide/AJAX/Premiers_pas

cherche sur google Loading gif pour des points moving

randomuser.me pour les fautes utilisateur   AjaxAPI:
$.ajax({
  url: 'https://randomuser.me/api/',
  dataType: 'json',
  success: function(data) {
    console.log(data);
  }
});
  randomuser.me/api  api application programming interface
our team via google, force image etc
 rapidapi.com/blog/most-popular-api/
 ie api.chucknorris.io avec format json
 openweathermap.org via ajax prendre toutes les infos de meteo de chaque pays et villes 
 react

 www.afp.com pour toutes les news via Ajax

 api.jquery.com/jquery.ajax/ -> défaut méthode'GET'

 themesforest.net
 google dev: developpers.google.com, Il faut créer un compte









-->