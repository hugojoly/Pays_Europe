<?php ob_start(); ?>
<?php require_once 'getInfoRegate.php'; ?>
        <div id="divconteneur">
            <div id="divcarte"></div>
            <div id="divclasse">
                <div class="legende">Classes</div>
                <table>
                    <tbody>
                         <?php
                        foreach ($listeClasse as $classe) {
                        ?>
                            <tr>
                                <td>
                                    <div class="legendeDiv">
                                        <?php echo $classe['typeCoque']; ?>
                                    </div>
                                    <div class="name-coque">
                                        <a href="#" data-classe="<?php echo $classe['idClasse']; ?>" class="show-bateaux">
                                            <?php echo $classe['nomClasse']; ?>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <div id="divlistebataeux">
                <div class="legende legendeBateau">Bateaux</div>
                <table id="tabBateaux">
                    <tbody id="showBateaux">
                       
                    </tbody>
                </table>
           </div>
            <div id="divphotoskipper">
                <div id="show-photo-skipper">
                   
                </div>
                <div class="legendephoto">Skipper</div>
                <div id="info-skipper"></div>
            </div>
            <div id="divphotobateau">
                <div id="show-photo-bateau">
                   
                </div>
                <div class="legendephoto">Bateau</div>
                <div id="info-bateau"></div>
            </div>
        </div>
<?php $contenu = ob_get_clean(); ?>
<?php $title = "Parcours Regate"; ?>
<?php require_once 'framework/template.php'; ?>    
