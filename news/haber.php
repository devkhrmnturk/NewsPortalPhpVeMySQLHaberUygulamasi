<?php
    include 'db-connect.php';
    $haberId = $_GET['id'];
    
    $sorgu="select * from haberler where haberId={$haberId}";
    $result = $mysqli->query($sorgu);

    $row=$result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        .haberMeta {
            margin-block: 2rem;
            display: flex;
            gap: 1rem;
        }

        .haberText {
            /* max-width: 76ch; */
            margin-bottom:4rem;
        }

        .header a {
            font-size: 1.8rem;
        }

    </style>
</head>

<body>
    <header class="wrapper header">
        <a href="index.php">
            &larr;
        </a>
    </header>

    <main class="wrapper">
        <section class="haberImage ">
            <img 
            src="img/<?php echo $row["haberImg"]; ?>" 
            alt="" 
            style="max-height: 450px; object-fit: contain;"
            >
        </section>
        <section class="haberContent ">
            <h2 class="haberTitle ">
                <?php echo $row["haberTitle"];?>
            </h2>
            <div class="haberMeta ">
                <small><?php echo $row["haberDate"];?> </small>
                <small><?php echo $row["haberSource"];?> </small>
            </div>
            <p class="haberText">
                <?php echo $row["haberContent"];?>
            </p>
        </section>
    </main>

    <?php $mysqli->close(); ?>
</body>

</html>