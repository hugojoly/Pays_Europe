<?php
if(isset($_GET['idClasse']) && !empty($_GET['idClasse'])){
    
    $listeInfoBateau = array();
    
    $idClasse = $_GET['idClasse'];
    
    require_once '../bddConfig.php'; 

    $requeteSQL = "SELECT * FROM bateau, classebateau WHERE classebateau.idClasse = ? AND bateau.idClasse = ? ORDER BY bateau.classementFinal";
    $reqBateau = $bdd->prepare($requeteSQL);
    $reqBateau->execute(array($idClasse, $idClasse));
    
    
    $Bateaux = $reqBateau->fetchAll();
    
    
    
    
    foreach($Bateaux as $bateau){
        
        if($bateau['classementFinal'] == 9999){
            $bateau['classementFinal'] = "AB";
        }
        
        $arrayJSON = array(
            "idBateau" => $bateau["idBateau"],
            "nomBateau" => $bateau["nomBateau"],
            "photo" => $bateau["photo"],
            "statutBateau" => $bateau["statutBateau"],
            "dateArrivee" => $bateau["dateArrivee"],
            "tempsCourse" => $bateau["tempsCourse"],
            "nomClasse" => $bateau["nomClasse"],
            "classementFinal" => $bateau["classementFinal"]
        );
        
        array_push($listeInfoBateau, $arrayJSON);
    }
    
    $valRetourJson = json_encode($listeInfoBateau);
}else{
    $arrayError = array("error" => "Aucun Résultat");
    $valRetourJson = json_encode($arrayError);
}

echo $valRetourJson;

