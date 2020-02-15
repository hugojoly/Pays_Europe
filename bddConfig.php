<?php

try{
    $bdd = new PDO('mysql:host=localhost; dbname=regate;charset=utf8', 'regate', 'ztmtTCF29PpnYFVj');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e){
     die('Erreur '.$e->getMessage());
}

?>


