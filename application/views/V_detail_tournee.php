<article>
    <h1>La tournée : <?php echo $result[0]['Nom']; ?></h1>
    <h3>Jour de collecte : <?php echo $result[0]['JourCollecte']; ?></h3>
    
    <?php  
    
    foreach($result as $res){
       ?>
    <p> 
      <?php echo $res['AddrEmplacement']; ?> <a href="<?php echo site_url("conteneurs/detail/".$res['RefSigfox']); ?>">Plus d'info</a>
    </p>
    <?php
    }
    ?>
</article>
