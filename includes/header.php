<section class=" w3l-header-4 header-sticky">
    <header class="absolute-top">
        <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <h1><a class="navbar-brand" href="index.php">
            ISET SFAX
            </a></h1>
            <button class="navbar-toggler bg-gradient collapsed" type="button" data-toggle="collapse"
                data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="fa icon-expand fa-bars"></span>
        <span class="fa icon-close fa-times"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Index <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">À propos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.php">Services</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>

                     <?php if (strlen($_SESSION['connuid']==0)) {?>
                     <li class="nav-item">
                        <a class="nav-link" href="signup.php">S'inscrire</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Connexion</a>
                    </li><?php }?>
                    <?php if (strlen($_SESSION['connuid']>0)) {?>
                    <li class="nav-item">
                        <a class="nav-link" href="book-appointment.php">Réservation </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="booking-history.php">Historique </a>
                    </li>
                                        <li class="nav-item">
                        <a class="nav-link" href="profile.php">Profile</a>
                    </li>
                                        <li class="nav-item">
                        <a class="nav-link" href="change-password.php">Paramètre</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="logout.php"> deconnexion</a>
                    </li>
                  <?php }?>
                </ul>

            </div>

        </div>

        </nav>
    </div>
      </header>
</section>
