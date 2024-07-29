<footer class="bg-light">
    <div class="container">
        <section class="row">
            <div class="col-12 col-md-4 d-flex justify-content-center align-items-center mx-auto">
                <h2>MonBlog</h2>
            </div>

            <div class="col-12 col-md-4 mx-auto">
                <nav>
                    <ul>
                        <li><a href="index.php">Accueil</a></li>
                        <li><a href="articles.php">Articles</a></li>
                        <li><a href="inscription.php">Inscription</a></li>
                        <li><a href="connexion.php">Connexion</a></li>
                    </ul>
                </nav>
            </div>

            <div class="col-12 col-md-4 mx-auto">
                <form action="#" method="POST" id="form-inscription">
                    <label for="mail">Inscrivez-vous à la newsletter</label>
                    <input type="text" name="mail" id="mail" class="form-control">
                    <p id="afficherErreur" class="text-danger d-none">► Vérifiez votre mail ◄</p>
                    <p id="afficherReussite" class="text-success d-none">Mail valide ♥ </p>
                    <input type="submit" value="Je m'inscris" class="btn btn-primary">
                </form>
                <script>
                    let inscription = document.querySelector('#form-inscription');
                    // 1 - je sélectionne mon formulaire dans une variable inscription

                    inscription.addEventListener('submit', fInscription);
                    // 2 - j'ajoute un écouteur d'événement sur mon formulaire qui se déclenchera à la soumission du formulaire

                    function fInscription(event) {
                        event.preventDefault(); 
                        // j'empêche à mon formulaire de partir

                        let mail = event.target.mail.value;
                        let regex = /([a-z0-9](\.?|\_|\-))*@([a-z0-9]{2,})(\.[a-z]{2,}){1,}/;
                        let erreur = document.getElementById('afficherErreur');
                        let valide = document.getElementById('afficherReussite');

                        if (!regex.test(mail)) {
                            erreur.classList.remove('d-none');
                            valide.classList.add('d-none');
                        } else {
                            erreur.classList.add('d-none');
                            valide.classList.remove('d-none');
                        }

                    }


                </script>
            </div>
        </section>
    </div>
</footer>