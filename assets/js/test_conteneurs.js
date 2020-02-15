
//Pour la lecture de ce qu'il y a dans la table conteneur
/*
$.ajax({
    type: "GET",
    url: "http://localhost/codeIgniter/REST/Conteneurs/",
    dataType: "json",
    json: "json",
    success: onGetSuccess,
    error: onGetError   
});

function onGetSuccess(reponse, status) { 
    reponse.forEach(function(element){
        $("body").append(JSON.stringify(element)); 
    });
}

function onGetError(status) {
    $("body").html(JSON.stringify(status));
}*/


//Pour la insérer une entrée dans la table conteneur
/*
var donnees = {"AddrEmplacement": "Lille", "RefSigfox": "1"} ;

$.ajax({
    type: "POST",
    url: "http://localhost/codeIgniter/REST/Conteneurs/",
    dataType: "json",
    json: "json",
    data: "dto=" + JSON.stringify(donnees),
    success: onGetSuccess,
    error: onGetError   
});

function onGetSuccess(reponse, status) { 
   
        $("body").html(JSON.stringify(reponse)); 

}

function onGetError(status) {
    $("body").html(JSON.stringify(status));
}
*/


//Pour la supprimer une entrée dans la table conteneur
/*
$.ajax({
    type: "DELETE",
    url: "http://localhost/codeIgniter/REST/Conteneurs/56/",
    dataType: "json",
    json: "json",
    success: onGetSuccess,
    error: onGetError   
});

function onGetSuccess(reponse, status) { 
   
        $("body").html(JSON.stringify(reponse)); 

}

function onGetError(status) {
    $("body").html(JSON.stringify(status));
}

*/

//Pour la modifier une entrée dans la table conteneur
/*
var donnees = {"AddrEmplacement": "Pérenchies", "RefSigfox": "8"} ;

$.ajax({
    type: "PUT",
    url: "http://localhost/codeIgniter/REST/Conteneurs/57/",
    dataType: "json",
    json: "json",
    data: "dto=" + JSON.stringify(donnees),
    success: onGetSuccess,
    error: onGetError   
});

function onGetSuccess(reponse, status) { 
   
    $("body").html(JSON.stringify(reponse)); 

}

function onGetError(status) {
    $("body").html(JSON.stringify(status));
}
 */

//Pour la rechercher une entrée dans la table conteneur
/*
$.ajax({
    type: "GET",
    url: "http://localhost/codeIgniter/REST/Conteneurs/",
    dataType: "json",
    json: "json",
    data: "dto=" + JSON.stringify(donnees),
    success: onGetSuccess,
    error: onGetError   
});

function onGetSuccess(reponse, status) { 
   
    $("body").html(JSON.stringify(reponse)); 

}

function onGetError(status) {
    $("body").html(JSON.stringify(status));
}
 */