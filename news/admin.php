<?php
    include 'db-connect.php';
    $sorgu="select * from haberler ORDER BY haberDate DESC";
    $result = $mysqli->query($sorgu);

    if($_SERVER["REQUEST_METHOD"]==="POST" && $_POST["button"] =="Ekle"){
        $haberTitle=$mysqli->real_escape_string($_POST['haberTitle']);
        $haberSource=$mysqli->real_escape_string($_POST['haberSource']);
        $haberImg=$mysqli->real_escape_string($_POST['haberImg']);
        $haberContent=$mysqli->real_escape_string($_POST['haberContent']);
        if(!empty($haberTitle) && !empty($haberSource) && !empty($haberContent) && !empty($haberImg)) {
            $sorgu = "INSERT INTO `haberler` (`haberId`, `haberTitle`, `haberContent`, `haberDate`, `haberSource`, `haberImg`) 
            VALUES (NULL, '$haberTitle', '$haberContent', current_timestamp(), '$haberSource', '$haberImg')";
            if ($mysqli->query($sorgu) === TRUE) {
                echo "<script>alert('Kayıt başarılı!');</script>";
            } else {
                echo "<script>alert('Hata oluştu: " . $mysqli->error . "');</script>";
            }
            header("Refresh: 0");
        }
        else
            echo "<script>alert('alanlar boş bırakılmamalı!');</script>";
    }
    if($_SERVER["REQUEST_METHOD"]==="POST" && $_POST["button"] =="Sil"){

        $id=$_POST["id"];
        $sorgu="delete from haberler where haberId={$id}";
        if ($mysqli->query($sorgu) === TRUE) {
            echo "<script>alert('silme başarılı!');</script>";
        } else {
            echo "<script>alert('Hata oluştu: " . $mysqli->error . "');</script>";
        }
        header("Refresh: 0");
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>newsportal Yönetim Paneli</title>
    <link rel="stylesheet" href="css/components/admin.css">
</head>

<body>
    <main class="wrapper">
        <section class="">
            <h2><a href="index.php" class="backarrow">&larr;</a></h2>
            <h1>Haberleri Yönet</h1>
        </section>

        <section>
            <h2>Tüm haberler</h2>
            <div class="showall ">
                <?php
                while($row = $result->fetch_assoc()) 
                {
                echo <<<EOT
                <article class="newsbar">
                    <p>{$row["haberId"]}</p>
                    <p>{$row["haberTitle"]}</p>
                    <p class="newsbar__content">{$row["haberContent"]}</p>
                    <p>{$row["haberDate"]}</p>
                    <p>{$row["haberSource"]}</p>
                    <img src="img/{$row["haberImg"]}">
                </article>
                EOT;
                }
                ?>
            </div>
        </section>

        <section>
            <h2>Kayıt Ekle / Sil</h2>
            <div class="container">
                <form method="post" action="">
                    <label for="title">haberTitle</label >
                    <input type="text" name="haberTitle" required>
    
                    <label for="source">haberSource</label>
                    <input type="text" name="haberSource" required>
    
                    <label for="image">haberImg</label>
                    <input type="text" name="haberImg" required>
    
                    <label for="content">haberContent</label>
                    <textarea name="haberContent"></textarea>
    
                    <input type="submit" value="Ekle" name="button">
                </form>

                <form method="post" class="kayitSilForm">
                    <label for="title">haberId</label>
                    <input type="text" name="id">
                    <input type="submit" value="Sil" name="button">
                </form>
            </div>
        </section>

    </main>

    <?php $mysqli->close(); ?>
</body>

</html>