//http://ou.comarquage.fr/api/v1/autocomplete-territory?kind=CommuneOfFrance
var urlRequete = "http://ou.comarquage.fr/api/v1/autocomplete-territory?kind=CommuneOfFrance&term=";

$("#btnChercher").click(function(){
    $("#divResult").html("");       //RENITIALISATION DE LA ZONE DE TEXTE
    var term = $("#idNom").val();
        
    $.ajax({
        type: "GET",
        url: urlRequete+term,
        dataType: "jsonp",
        jsonp: "jsonp",
        success: onGetCommuneSuccess,
        error: onGetCommuneError
    });

    function onGetCommuneSuccess(reponse, status){
        //alert(JSON.stringify(reponse));
        reponse.data.items.forEach(function(element){
            
            $("#divResult").append("<p>"+element.main_postal_distribution+"</p>");
        });
        
    }

    function onGetCommuneError(status){
        //alert(JSON.stringify(status));
        $("#divResult").html("<p>Pas de résultat</p>");
    }
 
}); 



