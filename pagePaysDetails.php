<?php require_once 'getDetailsPays.php'; ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title><?php echo $detailPays['nom']; ?></title>
        <link href="css/styleEurope.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1><?php echo $detailPays['nom']; ?></h1>
        <div id="divDrapeau">
            <?php if(isset($_GET['id']) && !empty($_GET['id'])){ ?>
            <h2>Drapeau :</h2>
            <img src="img/drapeaux_150px/<?php echo $detailPays['imgDrapeau']; ?>">
            <p><?php echo $detailPays['descriptif']; ?></p>
            <?php }else { ?>
            <h2>Désolé cette page n'exite pas</h2>
            <?php } ?>
        </div>
    </body>
</html>
