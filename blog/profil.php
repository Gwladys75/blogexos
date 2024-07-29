<?php
// 1- Connexion BDD / Page init.inc.php
require_once 'inc/init.inc.php';

// 2- Redirection vers la page connexion si l'utilisateur n'est pas connecté
if (!estConnecte()) { // si la parsonne n'est pas connectée
    header('location:connexion.php');
    exit(); // je renvoie vers la page connexion.php
}

// 3- Déconnexion de l'utilisateur
if (isset($_GET['action']) && $_GET['action'] == 'deconnexion') { // je vérifie que je récupère action = deconnexion
    session_destroy(); // détruire toutes les traces de la session
    $contenu .= '<div class="alert alert-success">Vous avez bien été déconnecté. <a href="connexion.php">Se reconnecter</a></div>';
}


?>
<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.1/litera/bootstrap.min.css" integrity="sha512-VytuSEcywyOk3/TgzUvYclfS5MrwPLUhVZHMGpN4O81Cu/LguN+MxiFUZOkem4VkRVAPC8BVqaGziJ+xUz2BZw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <title>MonBlog - Profil de <?php echo $_SESSION['users']['prenom'] . ' ' . $_SESSION['users']['nom'] ?></title>
</head>

<body>

    <?php require_once 'inc/nav.inc.php'; ?>
    <header class="p-5 mb-4 bg-light rounded-3">
        <section class="container-fluid py-5">
            <h1 class="display-5 fw-bold">MonBlog - Profil de <?php echo $_SESSION['users']['prenom'] . ' ' . $_SESSION['users']['nom'] ?></h1>
            <p class="col-md-8 fs-4">
                <?php

                if (estAdmin()) {
                    echo "Bienvenue, administrateur";
                } else {
                    echo "Vous êtes connecté.e";
                }

                ?>
            </p>
        </section>
    </header>

    <main class="container">
        <section class="row">
            <?php echo $contenu; ?>
            <div class="card text-center">
                <div class="card-header">
                    <h5 class="card-title">
                        <?php echo $_SESSION['users']['prenom'] . ' ' . $_SESSION['users']['nom']; ?>
                    </h5>
                </div>
                <div class="card-body">
                    <p class="card-text"> <?php echo $_SESSION['users']['mail'] ?></p>
                    <p class="card-text"><?php echo $_SESSION['users']['pseudo'] ?></p>
                    <p class="card-text">
                        <?php
                        if ($_SESSION['users']['genre'] == 'f') {
                            echo 'Femme';
                        } else {
                            echo 'Homme';
                        }
                        ?>
                    </p>
                </div>
                <div class="card-footer text-muted">
                    <a href="profil.php?action=deconnexion" class="btn btn-secondary">Me déconnecter</a>
                </div>

                <?php
                /* $la = $pdoBlog->prepare('UPDATE `users` SET `last_activity` = now() WHERE id_user = :id_user');
                $la->execute(array(
                    ':id_user' => $_SESSION['users']['id_user'],
                ));


                // display last_activity in English
                $dla = $_SESSION['users']['last_activity'];

                $date = \DateTime::createFromFormat('Y-m-d H:i:s', $dla, new \DateTimeZone('UTC'));
                $date->setTimezone(new \DateTimeZone('Europe/Paris'));


                // echo $date->format('l M jS Y');

                // IN AN OTHER LANGUAGE / HERE FRENCH
                $formatter = new \IntlDateFormatter('fr_FR', \IntlDateFormatter::MEDIUM, \IntlDateFormatter::MEDIUM);
                $formatter->setPattern('d MMMM Y');
                echo $formatter->format($date);  */
               

                ?>
            </div>
        </section>
    </main>

    <?php require_once 'inc/footer.inc.php' ?>

    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>
</body>

</html>