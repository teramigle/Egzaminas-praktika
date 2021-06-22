<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VTMC</title>
    <script src="https://kit.fontawesome.com/1386e5fbc9.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo:wght@200;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body class="bg">
    <header>
        <img alt="logo" src="img/logo.png" id="logo">
    </header>

    <?php

    
    $mysqli = mysqli_connect('localhost', 'root', '', 'kursai');
    if(mysqli_connect_error()){
        $errors=mysqli_connect_error;
        
    }else{
        echo "<section class='container'>";
        echo "<h2 class='my-5 heading'>Naujausi kursai</h2>";   
        echo "<div class='row'>";       
        $sql = "SELECT nuotrauka, id, pavadinimas, autorius, aprasas from kursai;";
        $res = mysqli_query($mysqli, $sql);
                
        
        while($kursai = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
            $nuotrauka = $kursai['nuotrauka'];
            // echo "<h2 class='my-5'>".$type."</h2>";
            echo "<div class='col-sm-6 col-md-4 d-flex'>";
                echo "<div class='card mb-3 flex-grow-1'>";
                    echo "<div class='card-header p-1 bg-white'>";
                        echo "<img src='".$nuotrauka."' class='img-fluid'>";
                    echo "</div>";
                    echo "<div class='card-body d-flex flex-column'>";
                    $pavadinimas = $kursai['pavadinimas'];
                        echo "<h4><a href='#' class='text-decoration-none'>$pavadinimas</a></h4>";
                        $autorius = $kursai['autorius'];
                        echo "<p>$autorius</p>";
                        echo "<hr>";
                        $aprasas = $kursai['aprasas'];
                        echo "<p>$aprasas</p>";
                        echo "<hr>";
                        $kurso_id = $kursai['id'];
                        $sql2 = "SELECT avg(balas) from reitingas where kurso_id=$kurso_id";
                        $res2 = mysqli_query($mysqli, $sql2);
                        $balas = mysqli_fetch_array($res2, MYSQLI_ASSOC);
                        
                        $sql3 = "SELECT count(*) from komentarai where kurso_id=$kurso_id";
                        $res3 = mysqli_query($mysqli, $sql3);
                        $komentarai = mysqli_fetch_array($res3, MYSQLI_ASSOC);

                        echo "<div class='d-flex flex-row flex-grow-1 justify-content-between align-items-end'>";
                            echo "<div><span class='me-2'>".round($balas['avg(balas)'], 1)."</span><i class='fas fa-star selected'></i><i class='fas fa-star selected'></i><i class='fas fa-star selected'></i><i class='fas fa-star selected'></i><i class='fas fa-star'></i></div>";
                            echo "<div><i class='fas fa-comment'></i><span class='mx-2'>".$komentarai['count(*)']."</span></div>";
                        echo "</div>";
                    echo "</div>";


                echo "</div>";
            echo "</div>";
        
            
        }
        echo "</div>";
        echo "</section>";
    }
    
    ?>
    
   
    <section class="container">
        <div class="row">
            <div class="col-md-6">
        <h2 class="mt-5 heading">Sekite naujienas</h2>
        <p>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</p>
        <div id="alert">

        </div>
        <form action="#" class="w-100 w-md-50">
            <label for="vardas" class="form-label">Vardas</label>
            <input type="text" name="vardas" id="vardas" class="form-control mb-3">
            <label for="email" class="form-label">El. paštas</label>
            <input type="email" name="email" id="email" class="form-control mb-3" required>
            <input type="submit" name="submit" id="submit" class="btn btn-primary mb-3" value="Užsisakyti">
        </form>
    </div>
</div>
    </section>
    <footer class="container">
        <hr>
        <p>&copy; 2021 Miglė Jakubkaitė</p>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>