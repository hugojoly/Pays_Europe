<?php
if(isset($_GET['idBateau']) && !empty($_GET['idBateau'])){
    
    $listeInfoTrajet = array();
    
    $idBateau = $_GET['idBateau'];
    
    require_once '../bddConfig.php'; 

    $requeteSQL = "SELECT donneebateau.idDonnee, "
            . "donneebateau.latitude, "
            . "donneebateau.longitude, "
            . "donneebateau.distanceArrivee "
            . "FROM donneebateau WHERE idBateau = ?";
    $reqTrajet = $bdd->prepare($requeteSQL);
    $reqTrajet->execute(array($idBateau));
    
    
    $Trajets = $reqTrajet->fetchAll();
    
    foreach($Trajets as $trajet){
        $arrayJSON = array(
            "latitude" => $trajet["latitude"],
            "longitude" => $trajet["longitude"]
        );
        
        array_push($listeInfoTrajet, $arrayJSON);
    }
    
    $valRetourJson = json_encode($listeInfoTrajet);
}else{
    $arrayError = array("error" => "Aucun Résultat");
    $valRetourJson = json_encode($arrayError);
}

echo $valRetourJson;