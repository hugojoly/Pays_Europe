<?php
require_once 'bddConfig.php';
$listePaysEurope = $bdd->query("SELECT pays.idPays, pays.nom, geographie.capitale, geographie.langue, geographie.population, geographie.superficie FROM pays, geographie WHERE pays.idGeo = geographie.idGeo");





