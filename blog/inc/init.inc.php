<?php

// 1- Connexion à la BDD
$pdoBlog = new PDO(
    'mysql:host=localhost;
    dbname=blog',
    'root',
    '',
    array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    )
);

// 2- Ouverture de session
session_start();


// 3- une variable pour afficher les messages de réussite ou d'errreur
$contenu = "";
/* cette variable sera utilisée exclusivement pour afficher les erreurs et les messages de réussite . On la laisse vide et on la concatènera avec les symboles suivants : .= pour afficher les messages. */

// 4- Inclusion du fichier functions.php
require_once 'functions.inc.php';