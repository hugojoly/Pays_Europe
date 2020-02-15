<?php
if(isset($_GET['id']) && !empty($_GET['id'])){
    require_once 'bddConfig.php';
    $id = intval($_GET['id']);
     
    $listePaysEurope = $bdd->prepare(""
            . "SELECT "
            . "pays.nom, "
            . "drapeau.imgDrapeau, "
            . "drapeau.descriptif "
            . "FROM pays, drapeau "
            . "WHERE pays.idDrapeau = ?"
            . "AND drapeau.idDrapeau = ?"
            ); 
    $listePaysEurope->execute(array($id, $id));
    $detailPays = $listePaysEurope->fetch();
    
    
    //var_dump($detailPays);
    
}else{
    //echo "Erreur cette page n'exite pas";
}








