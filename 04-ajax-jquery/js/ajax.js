$(document).ready(function(){ // si le document est prêt
    $(window).scroll(function(){ // lors du scroll dans la page
        // $("#affichage").append('<div id="affichage" style=" padding: 10px;
        // border: 1px solid #ddeedd;
        // margin-top: 20px;
        // overflow: hidden;"></div>');
    if($(window).scrollTop() == $(document).height() - $(window).height()){
        // si le scroll est arrivé en bas de la page       
        // On appelle l'ajax, params, function_success, format
        $.post("ajax.php", function(reponse){
            $("#affichage").append(reponse.images);
        },'json');
    
    }
    
    })
})