-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2024, 23:03:29
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `newsportaldb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `haberId` int(11) NOT NULL,
  `haberTitle` varchar(100) NOT NULL,
  `haberContent` text NOT NULL,
  `haberDate` datetime DEFAULT current_timestamp(),
  `haberSource` varchar(255) NOT NULL,
  `haberImg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`haberId`, `haberTitle`, `haberContent`, `haberDate`, `haberSource`, `haberImg`) VALUES
(8, 'KYK burs ve kredi ücreti aylık ne kadar, kaç TL? 2024-2025 KYK burs miktarı kaç lira?', 'KYK BURS VE KREDİ ÜCRETİ AYLIK NE KADAR, KAÇ TL?\r\n2024 yılında ön lisans ve lisans öğrencileri için burs ücreti aylık 2 bin TL olarak belirlenmişti. Burs ödemeleri yüksek lisansta 4 bin TL, doktorada 6 bin TL olarak güncellenmişti. 2024 yılının sonuna kadar bu ücret ödenmeye devam edecek. 2025 yılında ise yeni ücretler belirlenecek. 2025 yılından itibaren geçerli olacak yeni aylık ücretler önümüzdeki günlerde Gençlik ve Spor Bakanlığı tarafından duyurulacak. Şimdilik ödemeler ön lisans ve lisansta 2 bin lira olarak ödenmeye devam edecek.', '2024-12-02 18:27:57', 'CNN Türk', 'kyk.webp'),
(9, 'Bayraktar TB3’ün TCG ANADOLU testleri sürüyor', 'Havacılık tarihinde bir ilke imza atarak kısa pistli bir gemiden kalkış ve iniş yapan ilk SİHA olan Bayraktar TB3 PT-2, TCG ANADOLU’da yapılan uçuş testinde 2 kez daha başarıyla iniş kalkış gerçekleştirdi. Bahse konu test sırasında ASELSAN’ın ASELFLIR-500 görüntüleme sistemi de test edildi.\r\n\r\nBayraktar TB3 SİHA, 25 Kasım 2024 tarihinde Çanakkale açıklarında seyreden TCG ANADOLU gemisinde gerçekleşen ikinci uçuş testinde de iniş destek ekipmanı kullanmadan iki kez daha başarıyla iniş kalkış yaptı. 59. test kapsamında 2. ve 3. kalkış & iniş faaliyetlerini başarıyla icra eden milli SİHA, ortalama 20.000 feet irtifada uçtuğu testi başarıyla tamamladı. TEI tarafından yerli olarak geliştirilen PD-170 motoru ve ASELSAN tarafından milli olarak geliştirilen ASELFLIR-500 ile donatılan Bayraktar TB3 SİHA, bugüne kadar gerçekleştirilen test uçuşlarında toplam 828 saat 57 dakika havada kaldı.Bayraktar TB3 SİHA’nın katlanabilen kanat yapısının yanı sıra sahip olacağı kabiliyetler ile sınıfındaki lider insansız hava aracı olması hedeflenmekte. Görüş hattı ötesi haberleşme kabiliyetine de sahip olacak milli SİHA, bu sayede çok uzun mesafelerden kumanda edilebilecek. Böylece keşif-gözetleme, istihbarat ve taşıdığı akıllı mühimmatlar ile taarruz görevlerini deniz aşırı hedeflere karşı icra ederek Türkiye’nin caydırıcı gücünde çarpan etkisi sağlayacak.Defence Turk tarafından hazırlanan Bayraktar TB3 SİHA örnek taaruz konsepti çalışmasında da yer aldığı üzere milli SİHA, görüş hattı ötesi haberleşme kabiliyeti sayesinde deniz üstü ve altı düşman unsurlara karşı etkin bir şekilde kullanılabilecek. Özellikle öncü olan Bayraktar TB3 SİHA’nın sonobuoy atışı sayesinde denizaltı gibi fark edilmesi zor unsurların tespiti ve dost denüz üstü unsurlarına görüş hattı ötesi hedef bilgilerinin iletilmesi sayesinde gerek mühimmat taşıyıcı Bayraktar TB3 SİHA’lar ile gerekse de istif sınıfı fırkateynler ile atış faaliyetleri gerçekleştirilebilecek.', '2024-12-02 19:04:32', 'Defenceturk.net', 'tb3.webp'),
(10, 'HAVELSAN\'ın açık kaynak tabanlı yapay zeka platformu: MAIN', 'HAVELSAN, MAIN için açık kaynaktaki verileri derleyerek kendi modelini ortaya çıkardı. HAVELSAN, MAIN için açık kaynaktaki verileri derleyerek kendi modelini ortaya çıkardı.Bugün gerçekleştirilen HAVELSAN’ın \"Yapay Zeka\" konferansında HAVELSAN’ın MAIN GPT ürünü tanıtıldı. Etkinlikte aktarılan bilgilere göre; HAVELSAN, MAIN için açık kaynaktaki verileri derleyerek kendi modelini ortaya çıkardı. Etkinlikte MAIN, büyük dil modelinden öte yapay zeka platformu olarak tanımlandı. Paylaşılan bilgilere göre, HAVELSAN MAIN için kendi özgün mimarisini geliştirdi. \r\n\r\nMAIN, son kullanıcılar yerine kurumsal şirketlere hizmet vermeyi hedefliyor. Bu anlamda kurumların kendi verilerini kullanarak bir yapay zeka asistanı elde etmesi amaçlanıyor. Bu noktada veri güvenliğine de dikkat çekilerek yerel MAIN\'in yapay zeka asistanı ile verilerin kurumlardan dışarı çıkmayacağı vurgulanıyor. Platformun  IT yöneticileri için bir fırsat olduğu da ifade edildi. HAVELSAN, MAIN için MAIN Akademi programını da hayata geçirmeyi planladığını açıkladı. MAIN akademi ile yapay zeka çalışmaları yapmak isteyen öğrenci ve profesyonellere MAIN\'i açarak birlikte geliştirmeye ortam yaratılacak. Kurum, ayrıca nisan ayının son haftası MAIN Hackathon\'u düzenleneceğini açıkladı. Bu hackathon için Ankara\'dan tren ile yola çıkılarak Ahlat\'a gidilecek. Hackathon yolculuk süresince devam edecek. Yolculuk esnasında Fırat Üniversitesi ve Bitlis Üniversitesi\'nde de durulacak. \r\n\r\nHer sene belli miktarda kodun açık kaynak olarak yayınlandığı ifade edildi. Bu kapsamda HAVELSAN; geçtiğimiz dönemde 9 milyon satır kodu açık kaynaklı hale getirdi. ', '2024-12-02 19:20:02', 'Webrazzi', 'main.webp'),
(11, 'Samanyolu\'nun dışında bir yıldızın ilk yakın çekim görüntüsü', 'Avrupa Güney Gözlemevi\'nden (ESO) bilim insanları, ilk kez Samanyolu dışında bir yıldızın yakın çekim görüntüsünü elde etmeyi başardı. Bu tarihi görüntü, Dünya\'dan 160 bin ışık yılı uzaklıkta, Büyük Macellan Bulutu adlı komşu galakside yer alan WOH G64 adlı kırmızı süperdev yıldıza ait.\r\nGörüntüdeki parlak oval şeklin, yıldızın çevresini saran tozlu bir koza olduğu düşünülüyor. Bilim insanlarına göre, bu durum yıldızın yaşamının son aşamalarında olduğunu ve bir süpernova patlaması öncesinde büyük miktarda madde saçtığını gösteriyor.\r\n\r\nESO’nun Şili’deki Atacama Çölü’nde bulunan Çok Büyük Teleskop Interferometresi (VLTI) üzerindeki GRAVITY adlı cihaz sayesinde bu olağanüstü görüntü elde edildi. Bu cihaz, dört teleskoptan gelen ışığı birleştirerek benzersiz bir çözünürlük sağlıyor.\r\n\r\n“Yıldızın son nefeslerini izliyoruz”\r\nÇalışmanın baş yazarı, Şili’deki Andrés Bello Ulusal Üniversitesi’nden Keiichi Ohnaka, \"Yıldıza yakın bir şekilde çevrelenmiş, yumurta şeklindeki bir koza keşfettik. Bu, ölen yıldızın süpernova patlamasından önce maddeyi şiddetle saçmasıyla ilişkili olabilir\" dedi.\r\n\r\nEkip, yeni görüntüyü önceki gözlemlerle karşılaştırarak yıldızın parlaklığında son 10 yılda belirgin bir azalma olduğunu tespit etti.\r\n\r\nAlmanya’daki Max Planck Radyo Astronomi Enstitüsü’nden Gerd Weigelt, \"Bu yıldızda büyük bir değişim yaşanıyor. Bu, bir yıldızın yaşam döngüsünü gerçek zamanlı olarak izlemek için nadir bir fırsat sunuyor,\" açıklamasında bulundu.Güneş\'in iki bin kat boyutunda bir dev\r\nWOH G64, yaklaşık iki bin Güneş büyüklüğünde bir kırmızı süperdev olarak biliniyor ve bilim insanları tarafından “Dev Yıldız” olarak adlandırılıyor.\r\n\r\nYıldızın çevresindeki tozlu koza ve halkalı yapı, yaşamının son nefeslerini verirken saçılan maddeden oluşuyor olabilir.\r\n\r\nKeele Üniversitesi’nden Jacco van Loon, \"Bu yıldız türünün en uç örneklerinden biri. Herhangi bir ani değişim, onu patlamaya bir adım daha yaklaştırabilir\" dedi.\r\n\r\nAraştırmacılar, görüntüde görülen uzamış koza şeklini sürpriz olarak değerlendiriyor ve bu durumun henüz keşfedilmemiş bir eş yıldızın etkisiyle oluşabileceğini belirtiyor.\r\n\r\nAyrıca, daha sönük eliptik halkanın tozlu bir torusun iç kenarı olabileceği düşünülüyor. Ancak bu teoriyi doğrulamak için daha fazla gözlem yapılması gerekiyor.\r\n\r\nBu önemli bulgular, Astronomy and Astrophysics dergisinin 21 Kasım 2024 tarihli sayısında yayımlandı.\r\n\r\nSonuç: Astronomlar, ilk kez Samanyolu dışındaki bir galakside yer alan bir yıldızın yakın çekim görüntüsünü elde etti.\r\n\r\nBüyük Macellan Bulutu\'ndaki WOH G64 adlı yıldızın, bir süpernova patlaması öncesinde olduğu düşünülüyor.', '2024-12-02 19:23:25', 'earthsky', 'yildiz.jpg'),
(16, 'Milli muharip uçak KAAN yeniden havalanacak', 'Türk savunma sanayiinin yerli üretim 5. nesil savaş uçağı projesi olan milli muharip uçak KAAN\'ın bu yıl sonuna kadar üçüncü uçuşunu yapması için hazırlıklar sürüyor.Türk Havacılık Uzay Sanayii (TUSAŞ) Genel Müdürü Mehmet Demiroğlu, KAAN\'da üçüncü uçuş hazırlıklarının devam ettiğini belirterek, \"Tarih, şu anda vermek biraz zor olabilir ama bu yıl içerisinde uçmayı planlıyoruz.\" dedi.\r\n\r\nDemiroğlu, KAAN\'ın 2028\'de teslimatı için testlere başlayacakları prototipler P1 ve P2\'nin 2025\'in sonlarına doğru sahne alacağını ve onlarla çok yoğun teste başlayacaklarını ifade etti.\"Şu anda herhangi bir gecikmemiz yok\"\r\nDemiroğlu, 2026\'da ise P4 ve P5 prototiplerin testlerinin gerçekleştirileceğine değinerek, \"Bu 4-5 prototipimizle tüm testleri hızlı şekilde yapmamız gerek çünkü süre çok kısa ve bizim çok fazla test yapmamız lazım. 2028\'deki teslimata başlayabilmemiz için bunlar gerekli.\" ifadesini kullandı.\"İnşallah hep beraber 2025\'in sonunda da KAAN\'larımızı gökyüzünde göreceğiz.\" diyen Demiroğlu, çalışmaların yoğun şekilde devam ettiğini dile getirdi.\r\n\r\nDemiroğlu, programlarında herhangi bir gecikmenin yaşanmadığını aktararak, şunları kaydetti:\r\n\r\n\"Geliştirme programlarında gecikme doğaldır, yani olabilir. Bir gün, 2 gün, 3 gün, 1 hafta, 2 ay, bunlar doğaldır, bu gecikme sayılmaz. Yani planınızdan biraz şaşmışsınızdır. Bizim şu andaki planımız 2028 teslimatı. Bununla ilgili ne gerekiyorsa şu anda o plan dahilinde çalışıyoruz. Aksi durum olsa da paylaşırız ama şu anda planımızda herhangi bir değişiklik yok.\"', '2024-12-03 00:07:09', 'TRT Haber', 'kaan.jpg'),
(17, 'Türkiye’nin ilk kuantum bilgisayarı: QuanT', 'Türkiye’nin ilk kuantum bilgisayarı QuanT görücüye çıktı. TOBB Üniversitesi ETÜ Teknoloji Merkezi’nde geliştirilen bilgisayar, stratejik alanların yanı sıra sağlık, finans, sensör ve ileri malzeme geliştirme gibi sektörlerde oyunu değiştirecek bir etkiye sahip olarak görülüyor.TOBB’un ev sahipliğinde düzenlenen tanıtım törenine katılan Cumhurbaşkanı Yardımcısı Cevdet Yılmaz, 5 kubit kuantum bilgisayar QuanT ile Türkiye’nin kuantum bilgisayar teknolojisine sahip az sayıda ülke arasına girdiğine dikkati çekti. Yılmaz şöyle konuştu: “Bu bilgisayarımız sürekli geliştirilerek, birçok alanda klasik bilgisayarların çözmekte zorlandığı karmaşık problemleri çözecek. Kuantum bilgisayarlar, klasik bilgisayarların işlem gücünü kat kat aşarak, karmaşık problemleri çözme kapasitesiyle teknoloji dünyasında bir devrim olarak nitelendiriliyor. Kuantum devriminin insanlığın teknolojiye bakışını kökten değiştireceğini ve önümüzdeki yıllarda bilim ve endüstri dünyasını derinden şekillendireceğini birçok çevre öngörüyor. Kuantum bilgisayarlar stratejik alanların yanı sıra sağlık, finans, sensör teknolojileri ve ileri malzeme geliştirme gibi sektörlerde de oyun değiştirecek özelliğe sahip. Bu sebeple her ülke kendi yerli kuantum teknolojileri yol haritasını oluşturmaya başladı, aşama kaydeden ülkeler bu teknolojide tekeli elinde tutmak amacıyla kritik bileşenlere ticari kısıt uygulamaya yöneldiler.”', '2024-12-03 00:21:13', 'Hürriyet', 'quant.webp'),
(18, 'İstanbul’da 50 milyon TL’lik kaçak “PlayStation” operasyonu', 'İstanbul​ Emniyet Müdürlüğü Kaçakçılık​ Suçlarıyla Mücadele Şube Müdürlüğü ekiplerince yürütülen operasyonda şüpheli​ bulunan tır​ takibe alındı. Takip sonucu durdurulan turda yapılan aramalarda değeri 50 milyon TL’yi bulan 3 bin 500 adet oyun konsolu​, oyun kolu ve direksiyon setleri ele geçirildi.İstanbul Emniyet Müdürlüğü Kaçakçılık Suçlarıyla Mücadele Şube Müdürlüğü ekipleri, yurt dışından kaçak olarak getirilen oyun setlerinin piyasaya sürüleceği yönünde bilgi aldı. Konuyla ilgili çalışma başlatan polis, oyun setlerinin taşındığı TIR’ın izine rastladı. Ekipler bir süre takip ettiği TIR\'ı 29 Kasım’da Eyüpsultan\'da durdurdu.Türkiye’yi İran ve Orta Asya’ya bağlayan ve tarihi İpek Yolu’nun üzerinde bulunan Gürbulak Sınır Kapısı’ndan giriş yaptığı anlaşılan tıra gerçekleştirilen operasyonda 1 şüpheli yakalanarak gözaltına alındı. Tırın dorsesinde yapılan aramalarda ise piyasa değeri yaklaşık 50 milyon lirayı bulan toplam 3 bin 500 adet oyun konsolu, oyun kolu ve direksiyon setleri ele geçirildi. Paylaşılan görsellerden anlaşıldığı kadarıyla ele geçirilen ürünler arasında Sony PlayStation 5, DualSense kolu ve Logitech G29 Driving Force bulunuyor.\r\n\r\nEl konulan oyun konsolları emniyete götürülürken, gözaltına alınan şüpheli tır sürücüsü hakkında “5607 Sayılı Kanuna Muhalefet” suçundan tahkikat başlatıldığı öğrenildi. Kaçakçılık Suçlarıyla Mücadele Şube Müdürlüğüne götürülen sürücünün emniyetteki ifade işlemleri ise devam ediyor', '2024-12-03 00:35:14', 'DH Donanım Haber', 'ps5.webp');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`haberId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `haberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
