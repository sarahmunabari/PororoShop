# Host: localhost  (Version 5.5.5-10.1.38-MariaDB)
# Date: 2021-10-25 19:33:17
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_admin"
#

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_admin"
#

INSERT INTO `tb_admin` VALUES (1,'Sarah Abdul Hakim Munabari','admin','fcea920f7412b5da7be0cf42b8c93759','+6285891743032','sarahmunabari@gmail.com','Jl. H. Tohir Kampung Baru, Jakarta Barat 11560');

#
# Structure for table "tb_category"
#

DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_category"
#

INSERT INTO `tb_category` VALUES (4,'Laptop'),(5,'Handphone'),(6,'Sepatu'),(7,'Pakaian Pria'),(8,'Pakaian Wanita'),(9,'Alat Tulis'),(10,'Buku');

#
# Structure for table "tb_product"
#

DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_product"
#

INSERT INTO `tb_product` VALUES (5,4,'Lenovo Ideapad Slim 3 15 i3 1005G1',8250000,'<p>Spesifikasi :</p>\r\n\r\n<p>Operating System: Windows 10 Home + Office Home Student 2019<br />\r\nProcessor : Intel i3-1005G1 (Up to 3.40GHz, 4M Cache)<br />\r\nMemory RAM : 4GB DDR4 2667MHz<br />\r\nStorage : 512GB SSD<br />\r\nDisplay : 15.6&quot; FHD (1920x1080) Anti-glare LED backlight, 16:9 aspect ratio<br />\r\nMedia Reader : 4-in-1 Card Reader<br />\r\nWLAN + Bluetooth : 11ac, 2x2 + BT5.0<br />\r\nGraphic : Nvidia MX330 2GB<br />\r\nCamera : 0.3MP<br />\r\nMicrophone : 2x, Array<br />\r\nFingerprint Reader : None<br />\r\nTPM : FW TPM 2.0<br />\r\nCase Material : PC / ABS<br />\r\nBattery : Integrated 45Wh<br />\r\nPower Adapter : 65W Round Tip</p>\r\n','produk1635164651.jpg',1,'2020-05-19 08:52:15'),(6,4,'Lenovo IdeaPad S145-14API-60ID',7654200,'<p>*Spesifikasi :<br />\r\n-Processor AMD Athlon 300U processor (up to 2 MB L2 cache, up to 3.3 GHz)<br />\r\n-Memory 8GB DDR4-2400Mhz (4GB onboard + 4GB SODIMM), upgradeable max 12GB<br />\r\n-Storage SSD 512GB M.2 PCIe NVMe<br />\r\n-Graphic AMD Radeon RX Vega 3 iGPU<br />\r\n-Display 14 HD (1366x768) TN AG, 220nits, 45% NTSC<br />\r\n-Operating System Windows 10 Home x64<br />\r\n-Camera HD WebCam<br />\r\n-Audio 2 x 1.5W Dolby Audio speaker system<br />\r\n-Network &amp; Communication<br />\r\n802.11 AC 1x1, Bluetooth 4.2</p>\r\n','produk1635164471.jpg',1,'2020-05-19 08:52:45'),(7,4,'Laptop Lenovo Ideapad 3 14IGL05 Intel Celeron N4020 RAM 4GB SSD 256GB Win10',5475000,'<p>-Garansi Resmi Lenovo Indonesia 2 Tahun</p>\r\n\r\n<p>-Free Office Home &amp; Student 2019</p>\r\n\r\n<p>Speksifikasi Sebagai Berikut :</p>\r\n\r\n<p>-Procesor : Intel Celeron N4020 (2C / 2T, 1.1 / 2.8GHz, 4MB)<br />\r\n-Ram : 4GB Soldered DDR4-2400<br />\r\n-Storage : 256GB SSD M.2 2242 PCIe 3.0x2 NVMe<br />\r\n-Grpahics : Integrated Intel UHD Graphics 600<br />\r\n-Display : 14&quot; HD (1366x768) TN 220nits Anti-glare<br />\r\n-Media Reader : 4-in-1 Card Reader<br />\r\n-Wlan &amp; Bluetoot : 11ac, 2x2 + BT5.0<br />\r\n-Webcame : 0.3MP<br />\r\n-Microphone : 2x, Array<br />\r\n-Battery : Integrated 35Wh<br />\r\n-Adapter : 45W Round Tip</p>\r\n','produk1635164213.jpeg',1,'2020-05-19 08:53:02'),(8,5,'Apple iPhone 12 Pro Max 128GB',17999000,'<p>Ukuran layar: 6.7 inci, 1284 x 2778 pixels, Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak)<br />\r\nMemori: RAM 6 GB, ROM 128 GB<br />\r\nSistem operasi: iOS 14<br />\r\nCPU: Apple A14 Bionic (5 nm), Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)<br />\r\nGPU: Apple GPU (4-core graphics)<br />\r\nKamera: 12 MP, f/1.6, 26mm (wide), 1.7m, dual pixel PDAF, sensor-shift stabilization (IBIS). 12 MP, f/2.2, 65mm (telephoto), 1/3.4&quot;, 1.0m, PDAF, OIS, 2.5x optical zoom<br />\r\n12 MP, f/2.4, 120, 13mm (ultrawide), 1/3.6&quot;. TOF 3D LiDAR scanner (depth). Depan 12 MP, f/2.2, 23mm (wide), 1/3.6&quot;<br />\r\nSIM: Nano-SIM/eSIM<br />\r\nBaterai: Li-Ion 3687 mAh</p>\r\n','produk1635163929.jpg',1,'2020-05-19 08:53:23'),(9,5,'OPPO A12 RAM 3 ROM 32',1549000,'<p>OPPO A12<br />\r\nWarna : Black; Blue<br />\r\n<br />\r\nSPESIFIKASI :<br />\r\nDimensi : 155.9mm*75.5mm*8.3mm<br />\r\nBobot : 165g<br />\r\nLayar : 6.22Waterdrop screenScreen-to-body ratio: 88.3% 1520720(HD+)<br />\r\nProsesor : MTK6765 (P35) Octacore 2.3 Ghz<br />\r\nOS : Android 9.0ColorOS 6.1<br />\r\nMemori : 3GB/32GB<br />\r\nKamera Belakang : 13MP Kamera Utama+ 2MP Bokeh<br />\r\nKamera Depan : 5MP<br />\r\nJack : Micro-USBEarphone jack3.5mm<br />\r\nBaterai : 4230mAh<br />\r\nKeamanan : Fingerprint + Facial Unlock</p>\r\n','produk1635163775.jpeg',1,'2020-05-19 08:53:46'),(10,5,'Samsung Galaxy A52 RAM 8GB ROM 128GB',4725000,'<p>SAMSUNG GALAXY A 52<br />\r\nLayar Super AMOLED 6,5 inci (1.080 x 2.400 piksel)Infinity-O display,refresh rate 90Hz, aspek rasio 20:9,Corning Gorilla Glass 5<br />\r\nQualcomm Snapdragon 720G(8 nm)<br />\r\nOcta-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)<br />\r\nAndroid 11, One UI 3.1<br />\r\nRAM/ROM (8 GB/128 GB)<br />\r\nDual-SIM hybrid (microSD hingga 1 TB)<br />\r\nbatere 4.500mAh (Fast Charging25 Watt). NFC<br />\r\nkamera belakang 64 MP wide (f/1.8, 26mm) PDAF, OIS<br />\r\n12 MP ultrawide (f/2.2, 123 derajat)<br />\r\n5 MP macro (f/2.4)<br />\r\n5 MP depth (f/2.4)<br />\r\ndepan 32 MP (f/2.2, 26mm)<br />\r\nIP 67, Bluetooth 5.0, Optical Fingerprint Under Display, Game Booster,Wi-Fi 802.11 a/b/g/n/ac,USB Type-C, port jack audio 3,5 mm,Face Recognition, perekaman video 4K</p>\r\n','produk1635163650.jpeg',1,'2020-05-19 08:54:16'),(11,6,'Sepatu Nike Rose Run Big Size',500000,'<p>Nike Roserun Man sepatu sneakers rancangan khusus untuk Pria<br />\r\nIMPORT Sporty Shoes<br />\r\nReady size: 40-45 (naik +1)<br />\r\nBahan upper soft mesh breathable<br />\r\nSole soft rubber Cloudfoam</p>\r\n\r\n<p>Size :<br />\r\n40 = 23cm<br />\r\n41 = 24cm<br />\r\n42 = 25cm<br />\r\n43 = 26cm<br />\r\n44 = 27cm<br />\r\n45 = 28cm</p>\r\n','produk1635163454.jpeg',1,'2020-05-19 08:54:46'),(12,6,'Sepatu Adidas Pria Lari',200000,'<p>*Detail produk<br />\r\n- High quality grade original<br />\r\n-bahan : kanvas<br />\r\n- Size 39 - 44</p>\r\n','produk1635163352.jpg',1,'2020-05-19 08:55:15'),(13,6,'Sepatu Adidas Pria Casual Kets',250000,'<p>Spesifikasi<br />\r\n<br />\r\nBrand : Adidas<br />\r\n<br />\r\nVariant : Neo<br />\r\n<br />\r\nSize&nbsp;: 39-44<br />\r\n<br />\r\nQuality&nbsp;: Made in Vietnam</p>\r\n','produk1635163147.jpeg',1,'2020-05-19 08:55:42'),(14,7,'Batik Pria Modern Lengan pendek',300000,'<p>Model : Reguler (Bukan slimfit)<br />\r\nSize standar pria indonesia<br />\r\nBahan : Katun Primis, Adem, Halus, tidak luntur ( menggunakan sablon printing dan lebih awet )<br />\r\nUkuran : M, L<br />\r\n<br />\r\nM : lebar dada 52cm, lebar bahu 49cm, panjang baju 70cm<br />\r\nL : lebar dada 54cm, lebar bahu 50cm, panjang baju 71cm<br />\r\n&nbsp;</p>\r\n','produk1635162829.jpg',1,'2020-05-19 08:56:10'),(15,7,'Baju Koko Muslim Pria',100000,'<p>Bahan dasar baju koko ini adalah kain katun twill, karakter kain lembut, menyerap keringat, adem dan ringan digunakan. Nyaman dipakai untuk beribadah atau aktivitas lainnya.<br />\r\nTerdapat dua saku di bagian pinggang kanan &amp; kiri. Dan untuk motif bordir, ada di bagian depan seperti foto produk.<br />\r\n<br />\r\nDetail ukuran,<br />\r\nLebar Bahu x Lebar Dada x Panjang Badan x Panjang Lengan<br />\r\n2XL= 48cm x 61cm x 79cm x 29cm<br />\r\n3XL= 49cm x 63cm x 80cm x 29cm<br />\r\n4XL= 50cm x 65cm x 81cm x 29cm<br />\r\n5XL= 52cm x 67cm x 83cm x 29cm</p>\r\n','produk1589853389.png',1,'2020-05-19 08:56:29'),(16,8,'Baju Atasan Wanita Bloomy Blouse',150000,'<p>Bahan : Wollpeach</p>\r\n\r\n<p>Ukuran : L</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Lingkar Dada : 100 cm</p>\r\n\r\n<p>- Panjang Baju Depan : 65 cm</p>\r\n\r\n<p>- Lingkar Lengan : 38 cm</p>\r\n\r\n<p>- Panjang Tangan : 52 cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Warna Yang Tersedia :</p>\r\n\r\n<p>- Mocca</p>\r\n\r\n<p>- Maroon</p>\r\n\r\n<p>- Navy</p>\r\n','produk1635162320.jpg',1,'2020-05-19 08:56:50'),(17,8,'Baju Atasan Wanita Raisa Blouse',250000,'<p>Bahan : Wollpeach<br />\r\nUkuran : XL<br />\r\n- Lingkar Dada : 104 cm<br />\r\n- Panjang Baju : 75 cm<br />\r\n- Lingkar Lengan : 40 cm<br />\r\n- Panjang Tangan : 52 cm<br />\r\n<br />\r\nWarna Yang Tersedia<br />\r\n- Coksu<br />\r\n- Grey</p>\r\n','produk1635161662.jpg',1,'2020-05-19 08:57:11'),(18,9,'Stabilo Boss Highlighter',7000,'<p>Stabilo Yang Digunakan Banyak Orang Untuk Highlight Buku Atau Kata Kata Penting</p>\r\n\r\n<p>Merek: Stabilo Boss</p>\r\n\r\n<p>Warna: Kuning , Orange , Pink , Biru, Hijau, Merah, Ungu&nbsp;</p>\r\n\r\n<p>Harga Tertera Harga Satuan / Pcs</p>\r\n','produk1635161394.jpg',1,'2020-05-19 08:57:35'),(19,9,'Spidol Warna Snowman 12 Colours',13500,'<p>Spidol Warna Snowman 12 Colours</p>\r\n\r\n<p>Spesifikasi Produk :</p>\r\n\r\n<p>Tipe : Pencil Type</p>\r\n\r\n<p>Tip (Ujung Spidol) : 2.0 mm (Acrylic Fiber)</p>\r\n\r\n<p>Tebal Garis Tulisan : 0.5 - 1 mm</p>\r\n\r\n<p>Tinta / Ink : Water Base Ink</p>\r\n\r\n<p>Jumlah/Pak : 12 Spidol Warna</p>\r\n','produk1635161196.jpg',1,'2020-05-19 08:57:59'),(20,10,'Pengantar Ekonomi Mikro dan Makro',130000,'<p>Buku ini dihadirkan secara sistematis sehingga memudahkan pembaca memahami materi bahasan di dalam buku ini. Materi bahasan di dalam buku ini terangkum dari banyak sumber seperti Pirayoff (2004), Musgrave (2009), Sangeeta, et al (2011), Andersoon (2011), Sattora (2013), Dodge (2014), dan Jurnal dari internet.</p>\r\n\r\n<p>Pengarang :&nbsp;Paulus Kurniawan</p>\r\n\r\n<p>Penerbit :&nbsp;Penerbit Andi</p>\r\n\r\n<p>Tahun Terbit : 2015</p>\r\n','produk1635165041.jpg',1,'2020-05-19 08:58:18'),(21,10,'Agresi Perkembangan Teknologi Informasi',140000,'<p>Perkembangan teknologi informasi terutama dalam bidang komunikasi, sedikitnya ada dua teknologi yang berkembang sangat pesat dan agresif, yakni telepon seluler (handphone) dan komputer berjaringan internet&mdash;komputer yang dapat digunakan untuk menghubungkan seseorang dengan orang lain tanpa adanya batas jarak dan waktu. Materi pokok yang terkandung dalam bunga rampai (referensi) ini menyajikan dan mengulas dinamika perkembangan teknologi informasi, terutama agresivitas perkembangannya dalam bidang komunikasi dan informatika. Substansi buku antara lain menyajikan bahasan mengenai informasi pemerintahan melalui e-government; komparasi strategi komunikasi pemasaran pariwisata Indonesia-Malaysia; strategi komunikasi pemerintah daerah; pergeseran sosial budaya masyarakat Samin (sebagai contoh kasus); dan agresi negatif teknologi informasi menggusur budaya positif bangsa.&nbsp;</p>\r\n\r\n<p>Pengarang :&nbsp;Drs. H. Kasiyanto Kasemin</p>\r\n\r\n<p>Penerbit :&nbsp;Prenada Media</p>\r\n\r\n<p>Tahun Terbit : 2016</p>\r\n','produk1635164758.jpg',1,'2020-05-19 08:58:38');
