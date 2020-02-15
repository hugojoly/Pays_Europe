<?php 
require_once 'getListePays.php';
?>
<!DOCTYPE html>
<html>
    <head> 
        <title>Pays Europe Avec Base de données</title>
        <!--<link href="css/main.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/styleEurope.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Listes des pays</h1>
        <table>
            <thead>
                <tr>
                    <td>Pays</td>
                    <td>Langue</td>
                    <td>Capitale</td>
                    <td>Population</td>
                    <td>Superficie (km²)</td>
                </tr>
            </thead>
            <tbody>
                <?php
                
                foreach ($listePaysEurope as $ville) {
                    
                    $nomberPop = $ville['population'];
                    $nomberPopFrancais = number_format($nomberPop, 0, '', ' ');
                    
                    $nomberSuperficie = $ville['superficie'];
                    $nomberSuperficieFrancais = number_format($nomberPop, 0, '', ' ');
                    ?>
                    <tr>
                        <td><a href="pagePaysDetails.php?id=<?php echo $ville['idPays'];;?>"><?php echo $ville['nom']; ?></a></td>
                        <td><?php echo $ville['langue']; ?></td>
                        <td><?php echo $ville['capitale']; ?></td>
                        <td><?php echo $nomberPopFrancais ?></td>
                        <td><?php echo $nomberSuperficieFrancais ?></td>
                    </tr>
                    <?php
                }
                
                ?>
            </tbody>
        </table>
    </body>
</html>


