<?php
if(isset($_GET['idBateau']) && !empty($_GET['idBateau'])){
    
    $idBateau = $_GET['idBateau'];
    
    require_once '../bddConfig.php'; 

    $requeteSQL = "SELECT * FROM bateau WHERE idBateau = ?";
    $reqBateau = $bdd->prepare($requeteSQL);
    $reqBateau->execute(array($idBateau));
    
    $bateau = $reqBateau->fetch();
    
    $arrayJSON = array(
            "nomBateau" => $bateau["nomBateau"],
            "photo" => $bateau["photo"]
    );
    
    $valRetourJson = json_encode($arrayJSON);
}else{
    $arrayError = array("error" => "Aucun Résultat");
    $valRetourJson = json_encode($arrayError);
}

echo $valRetourJson;