<?php ob_start(); ?>
                <article>
                    <h2>Bienvenue sur le site des projets en BTS SNIR</h2>
                    <p>Les étudiants de 2ème année travaillent sur un projet informatique de janvier à juin. 
                       Chaque projet est constitué d'une équipe de 2 à 3 étudiants et fera l'objet d'une soutenance lors de leur examen.
                       <!--<img src="img/accueil.jpg" alt=""/>-->
                    </p>
                </article>
<?php $contenu = ob_get_clean(); ?>
<?php $title = "Accueil"; ?>
<?php require_once 'framework/template.php'; ?> 