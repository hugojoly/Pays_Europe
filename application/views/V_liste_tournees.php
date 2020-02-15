<article>
    <h1>La liste des tournées de collecte</h1>
    
    <?php   
    foreach($result as $res){
    ?>
    <p><a href="<?php echo site_url('tournee/detail/'.$res['Id']); ?>"><?php echo $res['Nom']; ?></a> <?php echo $res['JourCollecte']; ?></p>
    <?php
    } 
    ?>
</article>
