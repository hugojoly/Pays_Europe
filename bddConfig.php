<?php

try{
    $bdd = new PDO('mysql:host=localhost; dbname=europev1;charset=utf8', 'europe', 'europe');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e){
     die('Erreur '.$e->getMessage());
}

?>


