<article>
    <h1>Les conteneurs <?php if(isset($search) && $search != null){ echo '= "'.$search.'"'; }?> </h1>
    
    <form action="<?php echo site_url('conteneurs/search'); ?>" method="GET">
        <input type="text" name="search_string"/>
        <input type="submit" value="Rechercher"/>
    </form>
    <?php 
    if($result != null){  
        foreach($result as $res){
        ?>

        <p>
           <?php echo $res['Id']; ?> - <?php echo $res['AddrEmplacement']; ?> <a href="<?php echo site_url("conteneurs/detail/".$res['Id']); ?>"> Plus d'info</a>
        </p>
        <?php
        }
        echo $this->pagination->create_links();  
    }else{
        echo "Aucun Résultat.";
    }
    ?> 
</article>
