import 'town.dart';

class TownRepository {
  static List<Town> loadTown() {
    const allTown = <Town>[
      Town(
        description: 'Jakarta memiliki luas sekitar 664,01 km² (lautan: 6.977,5 km²), dengan penduduk berjumlah 10.562.088 jiwa (2020).',
        governor: 'Anies Baswedan',
        imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Coat_of_arms_of_Jakarta.svg/449px-Coat_of_arms_of_Jakarta.svg.png',
        name: 'Jakarta',
        province: 'Jakarta'
      ),
      Town(
          description: 'Surabaya memiliki luas sekitar ±326,81 km², dan 2.970.843 jiwa penduduk pada tahun 2021.',
          governor: 'Khofifah Indar Parawansa',
          imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/City_of_Surabaya_Logo.svg/467px-City_of_Surabaya_Logo.svg.png',
          name: 'Surabaya',
          province: 'Jawa Tengah'
      ),
      Town(
          description: 'Secara kepadatan kota ini merupakan kota terpadat kedua di Indonesia setelah Jakarta dengan kepadatan mencapai 15.051/km2. Kota ini terletak 140 km sebelah Tenggara Jakarta, dan merupakan kota terbesar di wilayah Pulau Jawa bagian selatan.',
          governor: 'Ridwan Kamil',
            imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Lambang_Kota_Bandung.svg/590px-Lambang_Kota_Bandung.svg.png',
          name: 'Bandung',
          province: 'Jawa Barat'
      ),
      Town(
          description: 'Medan adalah kota pertama di Indonesia yang mengintegrasikan bandara dengan kereta api. Berbatasan dengan Selat Malaka, Medan menjadi kota perdagangan, industri, dan bisnis yang sangat penting di Indonesia. Pada tahun 2020, kota Medan memiliki penduduk sebanyak 2.435.252 jiwa, dan kepadatan penduduk 9.522,22 jiwa/km2.',
          governor: 'Edy Rahmayadi',
          imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Logo_Kota_Medan_%28Seal_of_Medan%29.svg/495px-Logo_Kota_Medan_%28Seal_of_Medan%29.svg.png',
          name: 'Medan',
          province: 'Sumatra Utara'
      ),
      Town(
          description: 'Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk sekitar 1,6 juta jiwa. Kawasan mega-urban Semarang yang tergabung dalam wilayah metropolitan Kedungsepur (Kendal, Demak, Ungaran, Kabupaten Semarang, Kota Salatiga, Kota Semarang dan Purwodadi, Kabupaten Grobogan) berpenduduk mencapai 7,3 juta jiwa, sekaligus sebagai wilayah metropolitan terpadat keempat di Pulau Jawa, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.',
          governor: 'Ganjar Pranowo',
          imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Coat_of_arms_of_Central_Java.svg/526px-Coat_of_arms_of_Central_Java.svg.png',
          name: '	Semarang',
          province: 'Jawa Tengah'
      ),
    ];
    return allTown;
  }
}