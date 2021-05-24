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
      author: 'Chef Arnold',
      time: '180 min',
      portion: '10 orang',
      description: 'Saat daging yang dimasak hingga empuk bertemu dengan bumbu sedap daun kunyit, daun jeruk, dan daun salam, terbayang hidangan kaya rempah. Apalagi dimasak bersama dengan larutan Omela, gak ada yang bisa menolak masakan mewah satu ini. Rendang Omela rasanya luar biasa, selalu membuat tiap gigitannya berharga untuk dinikmati',
      ingredient: 'Bahan Utama : \n1. 2 kg Daging Rendang \n2. 3 lbr Daun Salam \n3. 5 lbr Daun Jeruk \n4. 4 btg Sereh \n5. 150 g Omela \n6. 1800 ml Air \n7. 5 sdm Minyak Goreng \n\nBumbu : \n1. 25 siung Bawang Merah \n2. 20 siung Bawang Putih \n3. 20 buah Cabai Merah \n4. 10 buah Cabai Merah Oranye \n5. 4 cm Jahe \n5. 3 cm Lengkuas \n6. 4 cm Kunyit \n7. 10 buah Kemiri \n8. 4 buah Asam Kandis \n9. 4 butih Cengkeh \n10. 5 butir Kapulaga Hijau India \n11. Garam, Lada dan Gula',
      howToCook: '1. Larutkan Omela dengan air \n2. Haluskan semua bumbu, kecuali asam kandis dan tumis denganminyak goreng hingga harum \n3. Masukkan larutan Omela dengan air bersama daging yang sudah dipotong-potong \n4. Masukkan asam kandis dan bumbu-bumbu kering \n5. Masak dengan api kecil hingga 2,5 jam hingga warna berubah cokelat, mengeluarkan minyak dan kering \n6. Hidangkan',
      imageAsset: 'images/rendang.jpg',
  ),
];