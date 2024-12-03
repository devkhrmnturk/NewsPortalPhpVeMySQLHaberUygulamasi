<?php
    include 'db-connect.php';
    $sorgu="select * from haberler ORDER BY haberDate DESC";
    $result = $mysqli->query($sorgu);

    if($_SERVER["REQUEST_METHOD"]==="POST" && $_POST["button"] =="Ekle"){
        $resimIsmi=basename($_FILES['image']['name']);
        $uploadDirection='img/';
        $uploadFile = $uploadDirection . $resimIsmi;
        move_uploaded_file($_FILES['image']['tmp_name'],$uploadFile);
        
        $haberTitle=$mysqli->real_escape_string($_POST['haberTitle']);
        $haberSource=$mysqli->real_escape_string($_POST['haberSource']);
        $haberImg = $mysqli->real_escape_string($resimIsmi);
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
    <style>
        @media (max-width:480px) {
    .container {
        flex-direction: column;
    }


    .newsbar img {
        min-width: 100px;
    }
}
    </style>
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
                <div class="baslik" style="margin-top: 1.5rem; display: grid; grid-template-columns: repeat(6,1fr); justify-content: space-between; gap: 1rem; overflow-x: scroll; scrollbar-width: none;" >
                    <h4>haberId</h4>
                    <h4>Haber Başlığı</h4>
                    <h4>Haber Kaynağı</h4>
                    <h4>Eklenme Tarihi</h4>
                    <h4>Haber Kaynağı</h4>
                    <h4>Haber Resmi</h4>
                </div>
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
                    <div>
                        <img src="img/{$row["haberImg"]}">
                    </div>
                </article>
                EOT;
                }
                ?>
            </div>
        </section>

        <section>
            <h2>Kayıt Ekle / Sil</h2>
            <div class="container" style="justify-content: space-between;">
                <form method="post" action="" enctype="multipart/form-data">
                    <label for="title">Haber Başlığı</label>
                    <input type="text" name="haberTitle" required>

                    <label for="source">Haber Kaynağı</label>
                    <input type="text" name="haberSource" required>

                    <label for="image">Bir resim seçin:</label>
                    <input type="file" name="image" accept="image/*" required>

                    <!-- <label for="image">haberImg</label>
                    <input type="text" name="haberImg" required> -->

                    <label for="content">Haber İçeriği</label>
                    <textarea name="haberContent" rows="10"></textarea>

                    <input type="submit" value="Ekle" name="button">
                </form>

                <form method="post" class="kayitSilForm" ;">
                    <label for="title">haberId'ye Göre Kayıt sil</label>
                    <input type="text" name="id">
                    <input type="submit" value="Sil" name="button">
                </form>
            </div>
        </section>

    </main>

    <?php $mysqli->close(); ?>
</body>

</html>