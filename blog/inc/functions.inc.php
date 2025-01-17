<?php

// 1- création d'une fonction de debug
function debug($mavar){
    echo '<pre class="alert alert-warning">';
    var_dump($mavar);
    echo '</pre>';
}
/* J'utiliserai cette fonction seulement quand je développe mon site // lorsque mon site est en ligne, je ne dois pas avoir de fonction de debug utilisée */

// 2- création d'une fonction pour vérifier que l'utilisateur est connecté

function estConnecte() {
    if(isset($_SESSION['users'])) { // si je récupère un indice 'users' dans la superglobale $_SESSION, cela signifie qu'un utilisateur est connecté
        return true;
    }else{ // sinon personne n'est connecté
        return false;
    }
}

// 3- création d'une fonction pour vérifier qu'un membre connecté est admin

function estAdmin() {
    if (estConnecte() && $_SESSION['users']['statut'] == 1) { // je vérifie que l'utilisateur est connecté et que son statut correspond à 1 dans la BDD
        return true; // si c'est le cas, il est administrateur
    }else {
        return false; // sinon, c'est un utilisateur lambda ou la personne n'est pas connectée.
    }
}


?>