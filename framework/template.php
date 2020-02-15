<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title><?php echo $title; ?> | Projet Regate</title>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin=""/>
        <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
        
    </head>
    <body>
        <div id="conteneur">
            <header>

            </header>

            <nav>
                <ul>
                    <li>
                        <a href="index.php">Accueil</a>
                    </li>
                    <li>
                        <a href="regate.php">Régate</a>
                    </li>
                    
                    <li>
                        <a href="media.php">Médiathèque</a>
                    </li>
                    <li>
                        <a href="estaminet.php">Estaminet</a>
                    </li>
                    <li>
                        <a href="tapiris.php">Tapiris</a>
                    </li>
                    <li>
                        <a href="garage.php">Garage</a>
                    </li>
                    <li>
                        <a href="parking.php">Parking</a>
                    </li>

                </ul>
            </nav>
            <section>
                <?php echo $contenu; ?>
            </section>

            <footer>
                <p>Copyright BTS SNIR Armentières - Tous droits réservés - 
                    <a href="#">Contact</a></p>
            </footer>
        </div>    
    </body>
    <script src="js/main.js" type="text/javascript"></script>
</html>
