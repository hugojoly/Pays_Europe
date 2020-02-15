<?php
if(isset($_GET['idBateau']) && !empty($_GET['idBateau'])){
    
    $idBateau = $_GET['idBateau'];
    
    require_once '../bddConfig.php'; 

    $requeteSQL = "SELECT skipper.idSkipper, "
            . "skipper.nomSkipper, "
            . "skipper.photo, "
            . "bateau.dateArrivee, "
            . "bateau.classementFinal, "
            . "bateau.tempsCourse, "
            . "bateau.idBateau "
            . "FROM skipper, bateau WHERE skipper.idBateau = ? AND bateau.idBateau = ?";
    $reqSkipper = $bdd->prepare($requeteSQL);
    $reqSkipper->execute(array($idBateau, $idBateau));
    
    $Skipper = $reqSkipper->fetch();
    
    $time = $Skipper["tempsCourse"];
    $time = TimeToSec($time);
    
    $arrayJSON = array(
            "nomSkipper" => $Skipper["nomSkipper"],
            "photo" => $Skipper["photo"],
            "dateArrivee" => $Skipper["dateArrivee"],
            "tempsCourse" => $time,
            "classementFinal" => $Skipper["classementFinal"],
            "idBateau" => $Skipper["idBateau"],
    );

    
    $valRetourJson = json_encode($arrayJSON);
    
}else{
    $arrayError = array("error" => "Aucun Résultat");
    $valRetourJson = json_encode($arrayError);
}

echo $valRetourJson;

function TimeToSec($prmTime) {
        $sec = 0;
        foreach (array_reverse(explode(':', $prmTime)) as $k => $v) 
            $sec += pow(60, $k) * $v;
        return $sec;
}