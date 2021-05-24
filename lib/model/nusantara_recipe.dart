import 'package:flutter/material.dart';

class NusantaraRecipe {
  String name;
  double rating;
  int numberOfReviews;
  String author;
  String time;
  String portion;
  String description;
  String ingredient;
  String howToCook;
  String imageAsset;

  NusantaraRecipe({
    @required this.name,
    @required this.rating,
    @required this.numberOfReviews,
    @required this.author,
    @required this.time,
    @required this.portion,
    @required this.description,
    @required this.ingredient,
    @required this.howToCook,
    @required this.imageAsset,
  });
}

var nusantaraRecipeList = [
  NusantaraRecipe(
    name: 'Rendang',
    rating: 4.5,
    numberOfReviews: 987,
    author: 'Chef Mahmud',
    time: '180 min',
    portion: '10 orang',
    description: 'Saat daging yang dimasak hingga empuk bertemu dengan bumbu sedap daun kunyit, daun jeruk, dan daun salam, terbayang hidangan kaya rempah. Apalagi dimasak bersama dengan larutan Omela, gak ada yang bisa menolak masakan mewah satu ini. Rendang Omela rasanya luar biasa, selalu membuat tiap gigitannya berharga untuk dinikmati',
    ingredient: 'Bahan Utama : \n1. 2 kg Daging Rendang \n2. 3 lbr Daun Salam \n3. 5 lbr Daun Jeruk \n4. 4 btg Sereh \n5. 150 g Omela \n6. 1800 ml Air \n7. 5 sdm Minyak Goreng \n\nBumbu : \n1. 25 siung Bawang Merah \n2. 20 siung Bawang Putih \n3. 20 buah Cabai Merah \n4. 10 buah Cabai Merah Oranye \n5. 4 cm Jahe \n5. 3 cm Lengkuas \n6. 4 cm Kunyit \n7. 10 buah Kemiri \n8. 4 buah Asam Kandis \n9. 4 butih Cengkeh \n10. 5 butir Kapulaga Hijau India \n11. Garam, Lada dan Gula',
    howToCook: '1. Larutkan Omela dengan air \n2. Haluskan semua bumbu, kecuali asam kandis dan tumis denganminyak goreng hingga harum \n3. Masukkan larutan Omela dengan air bersama daging yang sudah dipotong-potong \n4. Masukkan asam kandis dan bumbu-bumbu kering \n5. Masak dengan api kecil hingga 2,5 jam hingga warna berubah cokelat, mengeluarkan minyak dan kering \n6. Hidangkan',
    imageAsset: 'images/rendang.jpg',
  ),
  NusantaraRecipe(
    name: 'Ayam Penyet',
    rating: 4.0,
    numberOfReviews: 523,
    author: 'Bu Sifa',
    time: '40 min',
    portion: '10 orang',
    description: 'Potongan ayam yang digoreng dengan kombinasi krimer Omela dan bumbu halus. Tekstur jadi renyah diluar dan empuk didalamnya. Jadi masakan istimewa yang luar biasa lezatnya.',
    ingredient: 'Bahan Utama : \n1. 1 ekor Ayam \n2. 1 btg Sereh \n3. 2 lbr Daun Salam \n4. 5 lbr Jeruk \n5. 3 sdm Omela \n\nSambal : \n1. 15 buah Cabai Keritting \n2. 10 buah Cabai Rawit \n3. 1 blok kecil Terasi Bakar \n4. 1 sdt Garam \n5. 1 sdm Omela \n6. 1 tangkai Kemangi \n\nBumbu : \n1. 6 siung Bawang Putih \n2. 1 sdt Ketumbar (Sangrai) \n3. 1 ruas Kunyit \n4. 1 ruas Jahe \n5. 1 ruas Lengkuas \n6. 150 ml Air \n7. Garam, Lada secukupnya',
    howToCook: '1. Cuci bersih ayam, sisihkan. \n2. Masukan bumbu halus bersama sereh, daun salam, daun jeruk, OMELA, garam, lada, air dan ayam yang telah dipotong. \n3. Ungkep dengan api kecil hingga air menyusut dan ayam matang, angkat ayam lalu goreng sebentar saja hanya untuk membuat bagian luarnya garing. Sisihkan. \n4. Haluskan semua bahan sambal, bisa agak kasar atau halus, petiki kemangi, aduk rata. \n5. Letakan ayam di ulekan dan tekan-tekan kedua sisi hingga terlumuri sambal dan meresap, sajikan.',
    imageAsset: 'images/ayam-penyet.jpg',
  ),
  NusantaraRecipe(
    name: 'Sop Duren',
    rating: 4.3,
    numberOfReviews: 183,
    author: 'Bu Ratna',
    time: '15 min',
    portion: '3 orang',
    description: 'Nikmatnya buah durian berpadu dengan krimer kental manis Omela yang kental creamy dan lembut, bersatu menjadi minuman dingin yang segar dan manis untuk membuat hari semakin ceria. Sop Durian jadi tambah luar biasa rasanya dengan Omela',
    ingredient: 'Bahan Utama : \n1. 300 gr daging buah durian \n2. 2 sdm keju parut \n3. 1 buah alpukat \n4. 5 sdm Omela \n5. 150 ml air \n6. Es batu secukupnya',
    howToCook: '1. Larutkan omela dengan air. \n2. Susun bahan ke dalam gelas kecuali keju. \n3. Tuang dengan larutan omela lalu taburkan keju parut',
    imageAsset: 'images/sop-duren.jpg',
  ),
  NusantaraRecipe(
    name: 'Ayam Bakar Taliwang',
    rating: 3.8,
    numberOfReviews: 56,
    author: 'Saifudin',
    time: '40 min',
    portion: '4 orang',
    description: 'Ayam bakar Taliwang khas Lombok ini rasanya pedas menyengat. Paling enak dimakan dengan nasi hangat dan pelecing kangkung yang segar. \nOlahan ayam dari pulau Lombok ini berasal dari masyarakat Karang Taliwang, Kecamatan Cakranegara, Kota Mataram NTB. Ayam kampung muda yang diolah dengan cara sederhana. Dibakar di atas bara api dengan bumbu cabe yang pedas menggigit.',
    ingredient: 'Bahan Utama : \n1. 1 ekor Ayam Kampung \n2. 3 sdm (30ml) Omela \n3. 2 sdm Gula Merah \n4. 2 Lembar Daun Salam \n5. 3 Lembar Daun Jeruk \n6. 1 Batang Serai \n7. ½ Ruas Lengkuas \n\nBumbu : \n1. 10 Siung Bawang Merah \n2. 5 Siung Bawang Putih \n3. 2 Buah Cabai Besar \n4. 10 Buah Cabai Keriting \n5. 7 Buah Cabai Rawit \n6. ½ Buah Tomat \n7. 1 Ruas Kencur \n8. 1 Buah Terasi \n9. 4 Buah Jeruk Limo \n10. Garam, Lada, Kaldu Secukupnya',
    howToCook: '1. Cuci bersih ayam yang telah dipotong sesuai selera, beri jeruk limo, sisihkan. \n2. Tumis bumbu halus dengan minyak bersama daun salam, daun jeruk, sereh, lengkuas hingga harum lalu masukan ayam. \n3. Perasan jeruk limo dan beri sedikit air dan Omela, gula merah, garam dan lada, aduk rata sambil terus dimasak hingga ayam matang dan bumbu meresap. \n4. Setelah ayam matang, lalu bakar diatas panggangan atau alat bakar sambil dioles dengan sisa bumbu, sajikan.',
    imageAsset: 'images/ayam-bakar-taliwang.jpg',
  ),
  NusantaraRecipe(
    name: 'Sop Ikan Batam',
    rating: 4.0,
    numberOfReviews: 101,
    author: 'Chef Renata',
    time: '60 min',
    portion: '4 orang',
    description: 'Sop Ikan Batam adalah Sop ikan dengan kuah bening yang memiliki cita rasa yang khas karena memakai sawi asin. Bisa dijadikan pilihan sup untuk orang yang sedang sakit, selain hangat karena adanya kandungan ikan yg ada dalam sop.',
    ingredient: 'Bahan Utama : \n1. 1 ekor Ikan Kakap Merah \n2. 1 ruas Jahe (memarkan) \n3. 2 sdm (30ml) Omela \n4. 500 ml air \n5. 2 buah Tomat Merah \n6. 2 buah Tomat Hijau \n7. 1 batang Daun Bawang \n8. 1 buah Wortel \n9. 6 lbr Daun Jeruk \n10. 5 buah Cabai Rwit Utuh \n11. Kemangi Segenggam \n12. 2 buah Jeruk Lemon \n\nBumbu : \n1. 8 siung Bawang Merah \n2. ½ Bawang Bombay \n3. 4 siung Bawang Putih \n4. Garam, Lada dan Kaldu Jamur secukupnya',
    howToCook: '1. Bersihkan ikan dan potong menjadi beberapa bagian, jangan terlalu kecil agar tidak mudah rusak saat matang, beri sedikit perasan jeruk nipis dan garam, sisihkan. \n2. Potong wortel sesuai selera dan iris daun bawang, sisihkan. Potong belah enam tomat merah dan hijau, sisihkan. \n3. Larutkan 500ml air dengan 30ml Omela \n4. Tumis semua bumbu dengan sedikit minyak hingga harum, masukan air larutan Omela, masukan juga ikan, jeruk nipis, garam dan lada, rebus hingga ikan setengah matang dengan api sedang. \n5. Masukan wortel, tomat, kemangi, rebus kembali sebentar saja, matikan api apabila ikan dirasa sudah matang, jangan terlalu lama agar ikan tidak hancur, koreksi rasa, sajikan.',
    imageAsset: 'images/sop-ikan-batam.jpg',
  ),
  NusantaraRecipe(
    name: 'Sate Ayam Bulayak',
    rating: 3.8,
    numberOfReviews: 49,
    author: 'Ramziansyah',
    time: '25 min',
    portion: '4 orang',
    description: 'Sate bulayak adalah sate khas Pulau Lombok, Nusa Tenggara Barat, yang terbuat dari daging sapi berlumur bumbu khas Lombok dan disajikan bersama lontong. Bumbu sate tersebut terbuat dari kacang tanah sangrai tumbuk yang direbus bersama santan serta beberapa bumbu dapur lainnya sehingga rasanya mirip bumbu kari.',
    ingredient: 'Bahan Utama : \n1. 250gr Dada/Paha Ayam \n2. 4 sdm (60)ml Omela \n3. 1 buah Jeruk Limo \n4. Bawang Goreng (Taburan) \n\nBumbu : \n1. 6 siung Bawang Merah \n2. 3 siung Bawang Putih \n3. 5 buah Cabai Merah Kering \n4. 12 buah Cabai Rawit Merah \n5. 3 buah Cabai Merah Besar \n6. 1 blok Terasi Lombok/Biasa \n7. 4 butir Kemiri \n8. Garam, Lada, Kaldu bubuk secukupnya',
    howToCook: '1. Potong dadu ayam, lalu tusuk-tusuk menjadi sate, sebelumnya tusuk sate sudah direndam air agar tidak mudah terbakar dan sate bisa menempel sempurna. \n2. Haluskan semua bumbu hingga halus, lalu tumis dengan sedikit minyak, lalu masukan Omela dan sedikit air agar tidak terlalu kering. \n3. Masukan garam, lada dan kaldu secukupnya, masak kembali hingga bumbu mengental dan matang, sisihkan selama 30 menit atau sampai cukup dingin. \n4. Lumurkan bumbu ke sate ayam lalu panggang di bara api atau alat pemanggang hingga matang, setelah matang sajikan dipiring dan taburi dengan sisa bumbu dan juga bawang goreng, kucurkan jeruk limo, sajikan.',
    imageAsset: 'images/sate-ayam-bulayak.jpg',
  ),
  NusantaraRecipe(
    name: 'Es Alpukat Kocok',
    rating: 4.5,
    numberOfReviews: 621,
    author: 'Chef Juna',
    time: '15 min',
    portion: '1 orang',
    description: 'Alpukat lembut, es yang segar, whipped cream dan lezatnya krimer Omela yang creamy bikin Alpukat kocok yang satu ini spesial tanpa perlu repot. Alpuka kocok memang paling pas dengan Omela.',
    ingredient: 'Bahan Utama : \n1. 2 buah alpukat \n2. 25 gr nangka \n3. 3 sdm (45ml) Omela \n4. Whipping cream, sesuai selera \n5. Es serut',
    howToCook: '1. Masukkan alpukat dan 3 sdm Omela ke dalam gelas, lalu tambahkan sedikit es seru. \n2. Kocok alpukat menggunakan sendok hingga halus \n3. Tambahkan kembali potongan alpukat, nangka, dan es serut di atasnya \n4. Beri whipping cream sesuai selera \n5. Es Alpukat Kocok siap disajikan',
    imageAsset: 'images/es-alpukat-kocok.jpg'
  ),
];