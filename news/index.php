<?php
    include 'db-connect.php';
    
    function tarihHesap($haberDate){
        date_default_timezone_set('Europe/Istanbul');
        $currentDate=new DateTime();
        $newsDate=new DateTime($haberDate);
        $different=$currentDate->diff($newsDate);

        if($different->h >=24){
            return $different->days. " Gün Önce";
        }
        elseif($different->h >1  && $different->h <24){
            return $different->h . " Saat Önce";
        }
        else {
            return $different->i . " Dakika Önce";
        }
    }
    
    

    function baslikAt($baslik){
        $uzunluk=mb_strlen($baslik,'UTF-8');
        $yeniBaslik="";
        if($uzunluk> 35) {
            $i=0;
            while($i<35) {
                $yeniBaslik=$yeniBaslik . $baslik[$i];
                $i=$i+1;
            }
            $yeniBaslik = substr($yeniBaslik, 0, -3);
            $yeniBaslik=$yeniBaslik."...";
            return $yeniBaslik;
        }
        return $baslik;
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News portal</title>

    <link rel="stylesheet" href="css/style.css">
    <style>
        .header {
        display: flex !important;
        align-items: center;
        justify-content: space-between;
    }

    </style>
</head>
<body>
    <header class="header wrapper">
        <p class="logo " style="width:fit-content;">
            <span>News</span>Portal            
        </p>
        <h4>
            <a href="admin.php">Yönet</a>
        </h4>
        <!-- search bar -->
        <!-- hamburger -->
    </header>

    <main class="wrapper">
        <!-- hot topic -->
        <section class="hero">
            <h1>Sıcak konular</h1>
            <div class="for-desktop">
                <?php

                    $sorgu="select * from haberler order by haberId desc limit 1";
                    $result = $mysqli->query($sorgu);
                    while($row=$result->fetch_assoc())
                    {
                        $hesaplananTarih=tarihHesap($row["haberDate"]);
                        echo <<<ETC
                        <article 
                            class="content hero__card "
                            style="background-image: url(img/{$row["haberImg"]});"
                        >
                            <a 
                            href="haber.php?id={$row["haberId"]}" 
                            class="hero__card__title" 
                            >
                            {$row["haberTitle"]}
                            </a>
                            <footer class="hero__card__footer">
                                <small>{$hesaplananTarih}</small>
                                <small>{$row["haberSource"]}</small>
                            </footer>
                        </article>
                        <div class=" content hero__card__text scroll-hide">
                            <p>{$row["haberContent"]}</p>
                        </div>
                        ETC;
                    }
                ?>
            </div>
        </section>
        <!-- lastest news -->
        <section>
            <h2>Son Haberler</h2>
            <article class="content grid">
                <!-- 
                    newscards 
                -->
                <?php
                    $sorgu="select * from haberler where haberId > 1 ORDER BY haberDate DESC";
                    $result = $mysqli->query($sorgu);
                    while($row = $result->fetch_assoc())
                    {
                    $hesaplananTarih=tarihHesap($row["haberDate"]);
                    $baslik=baslikAt($row["haberTitle"]);
                    echo <<<EOT
                        <article class="newscard" >
                                <img 
                                class="newscard__img"
                                src="img/{$row["haberImg"]}" 
                                alt=""
                                style="border-radius: 0.5rem;">
                                <a 
                                class="newscard__title" 
                                href="haber.php?id={$row["haberId"]}"
                                >
                                    {$baslik}
                                </a>
                                <footer class="newscard__footer">
                                    <small>{$hesaplananTarih}</small>
                                    <small>{$row["haberSource"]}</small>
                                </footer>
                        </article>
                    EOT;
                    }
                ?>
            </article>
        </section>
    </main>

    <?php
        $mysqli->close();        
    ?>

    <footer class="footer">
        <p class="footer__copytext">
            Copyright 2024 News Portal
        </p>
    </footer>
</body>
</html>