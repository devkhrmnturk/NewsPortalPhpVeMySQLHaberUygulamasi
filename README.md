# NewsPortalPhpVeMySQLHaberUygulamasi
 php,mysql,html,css xampp ve Figma tasarımı kullanarak, veri tabanındanından alınan haberleri görüntüleyen, veri tabanına haber ekleme ve silme işlemlerini gerçekleştiren web sitesi.

## figma tasarımı

https://www.figma.com/community/file/1012997791904715053

## proje görüntüleri

### anasayfa

![Ekran görüntüsü 2024-12-03 015245](https://github.com/user-attachments/assets/70f69e4a-a446-461f-a4f2-02a01bf35301)

### anasayfa mobil 

![Ekran görüntüsü 2024-12-03 015537](https://github.com/user-attachments/assets/84fe5d25-72a3-453d-9e62-cedbb70cc08b)

### haber sayfası

![Ekran görüntüsü 2024-12-03 020927](https://github.com/user-attachments/assets/a20c6fb8-0c4c-4942-9e68-11c25f9f6dce)

### haber sayfası mobil

![Ekran görüntüsü 2024-12-03 021009](https://github.com/user-attachments/assets/f110b4e0-4657-433c-a484-426202deaeb9)

### yonet sayfası

![Ekran görüntüsü 2024-12-03 020347](https://github.com/user-attachments/assets/8199dd59-5c7c-4264-a8b5-29b2e6ec8b0f)

### haber ekleme ve silme formu

![Ekran görüntüsü 2024-12-03 020359](https://github.com/user-attachments/assets/e4dea0db-bfe6-4b92-8f12-f2768f02e355)



## kurulum 
- 1.xampp kurulu olmalıdır. Apache ve MySQL bağlantılarının açık olduğundan emin olun.
- 2.htdocs klasörüne projeyi ekleyin. ('sunucunuza yukleyin')
- 3.projede ana dizindeki, newsportaldb.sql veri tabanı dosyasını, (tarayıcınızda, localhost/phpmyadmin/ yolundan erişebilirsiniz) veri tabanınıza içeri aktarın.
- 4.proje ana dizindeki, db-connect.php dosyası veri tabanı bilgilerini barındırır. 
- 5.tarayıcınızda localhost/news/ yolunda projeyi görüntüleyin.

## veri tabanı yapısı

### haberler tablosu

- haberId: INT (primary key, auto increment)
- haberTitle: TEXT (not null)
- haberContent TEXT (not null)
- haberDate DATETIME (default current_timestamp)
- haberSource VARCHAR (not null)
- haberImg TEXT (not null)
