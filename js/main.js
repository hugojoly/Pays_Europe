$(document).ready(function () {
    
    latlngs = [];
    arrayCord = [];
    
    carteLeaflet = null;
    polyline = null;
    
    idClasse = 1; 
    idBateau = 1;
    
    getBateau(idClasse);
    getTrajet(idBateau);
    getPhotoSkipper(idBateau);
    getPhotoBateau(idBateau);
    
    $(".show-bateaux").click(function (e) {
        e.preventDefault();
        idClasse = $(this).data("classe");
        getBateau(idClasse);
    });
    
/*******************************************************CREATION DE LA CARTE LEAFLET **************************************************/
    
    if (carteLeaflet === null) {
        
        carteLeaflet = new L.Map("divcarte", {
            center: [20, -20],
            zoom: 3
        });
        new  L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
	attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
        }).addTo(carteLeaflet);
        L.marker([49.485797, 0.089977]).addTo(carteLeaflet);
        L.marker([-12.967358, -38.519083]).addTo(carteLeaflet);    
        
    }
});

/*******************************************************RECUPERER LISTE BATEAUX **************************************************/

function getBateau(prmIdClasse) {
    
    $("#showBateaux").html("<img src='./img/wait_anim.gif' alt='' />");
    
    $.ajax({
        type: "POST",
        url: "./data/getBateaux.php?idClasse="+prmIdClasse,
        dataType: "json",
        json: "json",
        success: onGetSuccess,
        error: onGetError
    });

    function onGetSuccess(reponse, status) {
        
        $("#showBateaux").html("");
        
        reponse.forEach(function(element){

            $("#showBateaux").append("<tr><td>"+element.classementFinal+" <a href='#' class='name-bateau' data-bateau='"+element.idBateau+"'>"+ element.nomBateau +"</a></td></tr>");
            
        });
        
        $(".legendeBateau").html(reponse[0].nomClasse);
        
        $('.name-bateau').click(function(e){
                e.preventDefault();
                idBateau = $(this).data("bateau");                  
                getTrajet(idBateau);
                getPhotoSkipper(idBateau);
                getPhotoBateau(idBateau);
        });
    }

    function onGetError(status) {
        $("#divlistebataeux").html("<p>Pas de résultat</p>");
    }
}

/*******************************************************RECUPERER INFOS TRAJET BATEAUX **************************************************/

function getTrajet(prmIdBateau) {
    
    $.ajax({
        type: "POST",
        url: "./data/getTrajet.php?idBateau="+prmIdBateau,
        dataType: "json",
        json: "json",
        success: onGetSuccess,
        error: onGetError
    });

    function onGetSuccess(reponse, status) {
        
        latlngs = [];
        
        latlngs.push([49.485797, 0.089977]);
        
        reponse.forEach(function(element){  
            
            latitude = element.latitude;
            longitude = element.longitude;
            
            arrayCord = [latitude, longitude];
            latlngs.push(arrayCord);
        });
        
        //latlngs.push([-12.967358, -38.519083]);
        
        if(polyline == null){
            
            addPolyline(latlngs);
            console.log(latlngs);
        }else{
            
            clearPolylines(latlngs);
            
        }
        
    }

    function onGetError(status) {
        alert(JSON.stringify(status)); 
    }
}

/*******************************************************RECUPERER INFOS SKIPPER **************************************************/

function getPhotoSkipper(prmIdBateau) {
    
    $.ajax({
        type: "POST",
        url: "./data/getPhotoSkipper.php?idBateau="+prmIdBateau,
        dataType: "json",
        json: "json",
        success: onGetSuccess,
        error: onGetError
    });

    function onGetSuccess(reponse, status) {
       
        $('#show-photo-skipper').html("<img src='img/photos_skippers_150_200/" + reponse.photo + "' alt='' />");
               
        tempsCourse = reponse.tempsCourse;
        timeCourse = toHHMMSS(tempsCourse);
        
        $("#info-skipper").html("<p>"+ reponse.nomSkipper +"<br>Arrivé "+ reponse.classementFinal +"<br>en "+ timeCourse +"</p>");  
    }

    function onGetError(status) {
        alert(JSON.stringify(status)); 
    }
}

/*******************************************************RECUPERER INFOS BATEAUX **************************************************/

function getPhotoBateau(prmIdBateau) {
    
    $.ajax({
        type: "POST",
        url: "./data/getPhotoBateau.php?idBateau="+prmIdBateau,
        dataType: "json",
        json: "json",
        success: onGetSuccess,
        error: onGetError
    });

    function onGetSuccess(reponse, status) {
       
        $('#show-photo-bateau').html("<img src='img/photos_bateaux_250_167/" + reponse.photo + "' alt='' />");
        $("#info-bateau").html("<p>"+ reponse.nomBateau +"</p>");         
        
    }

    function onGetError(status) {
        alert(JSON.stringify(status)); 
    }
}

/*******************************************************FONCTION CONVERTIR SECONDES EN JOURS, HEURES, MINUTES **************************/

function toHHMMSS(prmTime) {
    var reste = prmTime;
    var result='';
 
    var nbJours = Math.floor(reste / (3600 * 24));
    reste -= nbJours * 24 * 3600;
 
    var nbHours = Math.floor(reste / 3600);
	reste -= nbHours * 3600;
 
	var nbMinutes = Math.floor(reste/60);
	reste -= nbMinutes * 60;
 
	var nbSeconds=reste;
 
	if (nbJours > 0)
		result = result + nbJours + 'j ';
 
	if (nbHours>0)
		result = result + nbHours + 'h ';
 
	if (nbMinutes>0)
		result = result + nbMinutes + 'min ';
 
	if (nbSeconds>0)
		result = result + nbSeconds + 's ';
 
	return result;
}

/*******************************************************REINITIALISER LE POLYLINE **************************************************/

function addPolyline(polyArray) {
    polyline = L.polyline(polyArray, {color: '#fff'});
    polyline.addTo(carteLeaflet);
}
 
function clearPolylines(polyArray) {
    polyline.setLatLngs(polyArray);
}