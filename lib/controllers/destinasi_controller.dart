import '../models/destinasi.dart';
import '../models/wisata_alam.dart';
import '../models/wisata_kuliner.dart';
import '../models/wisata_budaya.dart';

class DestinasiController {
  static final List<Destinasi> _destinasiList = [
    /// ================= WISATA ALAM =================
    WisataAlam(
      nama: "Pantai Kuta",
      lokasi: "Bali",
      imagePath: "assets/images/kuta.jpg",
      rating: 4.8,
      harga: 50000,
      deskripsi:
        "Pantai Kuta berada sekitar 2 Km sebelah utara Bandara Internasional Ngurah Rai, Tuban atau sekitar 10 Km dari Kota Denpasar. Pantai Kuta Bali adalah pantai yang paling terkenal di Pulau Bali. Pantai Kuta terkenal hingga ke mancanegara dengan pasirnya yang putih dan ombaknya yang panjang dan besar yang sangat menguji nyali para peselancar dari berbagai belahan dunia. Lokasi yang sangat strategis membuat Pantai Kuta Bali tidak pernah sepi pengunjung. Di sepanjang jalan menuju pantai ada banyak hotel, restoran, pusat perbelanjaan, pasar seni, dan fasilitas penunjang obyek wisata lainnya. Menjelang sore wisatawan biasanya berjalan-jalan menuju pantai untuk sekedar cuci mata sambil menikmati suasana sunset yang biasanya terbenam sekitar pukul 18.00 WITA. Tersedia tenaga penyelamat pantai, public shower, areal parkir, shuttle service serta berbagai fasilitas kepariwisataan. ", id: '',
    ),
    WisataAlam(
      nama: "Raja Ampat",
      lokasi: "Papua",
      imagePath: "assets/images/rajaampat.jpg",
      rating: 4.9,
      harga: 150000,
      deskripsi:
         "Raja Ampat merupakan salah satu destinasi wisata alam paling menakjubkan di Indonesia yang terletak di wilayah Papua Barat. Kawasan ini dikenal sebagai surga bawah laut dunia karena memiliki keanekaragaman hayati laut yang sangat tinggi dan terumbu karang terbaik di dunia."
         "Perairan Raja Ampat dihuni oleh ribuan spesies ikan, terumbu karang berwarna-warni, serta berbagai biota laut langka yang menjadikannya lokasi favorit bagi penyelam dan pecinta snorkeling. Selain keindahan bawah laut, Raja Ampat juga menawarkan panorama alam berupa gugusan pulau-pulau karst yang eksotis dengan air laut yang jernih berwarna biru kehijauan."
         "Tidak hanya keindahan alamnya, Raja Ampat juga menyuguhkan pengalaman budaya lokal yang autentik melalui kehidupan masyarakat adat yang masih menjaga kearifan lokal. Dengan keindahan alam yang luar biasa dan suasana yang masih alami, Raja Ampat menjadi destinasi impian bagi wisatawan yang ingin merasakan petualangan sekaligus ketenangan alam.", id: '',
    ),
    WisataAlam(
      nama: "Banda Neira",
      lokasi: "Maluku Tengah, Maluku",
      imagePath: "assets/images/banda_neira.jpg",
      rating: 4.8,
      harga: 120000,
      deskripsi:
        "Banda Neira merupakan sebuah pulau bersejarah yang terletak di Kepulauan Banda, Maluku Tengah. Pulau ini terkenal sebagai salah satu pusat perdagangan rempah-rempah dunia pada masa kolonial, sehingga memiliki banyak peninggalan sejarah seperti benteng, bangunan tua, dan situs bersejarah yang masih terawat hingga saat ini."
        "Selain nilai sejarahnya yang tinggi, Banda Neira juga menawarkan keindahan alam yang memukau. Perairan di sekitar pulau ini sangat jernih dan kaya akan biota laut, menjadikannya lokasi favorit untuk aktivitas snorkeling dan diving. Terumbu karang yang masih alami serta keanekaragaman ikan hias menciptakan pengalaman wisata bahari yang luar biasa."
        "Pulau ini juga dikelilingi oleh pemandangan alam yang menenangkan, seperti Gunung Api Banda yang menjulang megah serta pantai-pantai berpasir putih yang masih sepi dari keramaian. Dengan perpaduan antara wisata sejarah, budaya, dan keindahan alam, Banda Neira menjadi destinasi ideal bagi wisatawan yang mencari pengalaman liburan yang unik, edukatif, dan berkesan.", id: '',
    ),
    WisataAlam(
      nama: "Pulau Lengkuas",
      lokasi: "Belitung",
      imagePath: "assets/images/pulau_lengkuas.jpg",
      rating: 4.9,
      harga: 200000,
      deskripsi:
        "Pulau Lengkuas merupakan sebuah pulau kecil yang terletak di perairan Belitung dan terkenal dengan mercusuar peninggalan Belanda yang berdiri megah sejak tahun 1882. Mercusuar ini menjadi ikon utama Pulau Lengkuas dan menawarkan pemandangan laut lepas yang sangat indah dari puncaknya."
        "Pulau ini dikelilingi oleh air laut yang jernih berwarna biru kehijauan serta hamparan batu granit besar yang menjadi ciri khas wilayah Belitung. Kondisi perairannya yang tenang menjadikan Pulau Lengkuas sebagai lokasi ideal untuk aktivitas snorkeling, berenang, dan menikmati keindahan bawah laut yang masih terjaga."
        "Dengan suasana yang alami, bersih, dan jauh dari hiruk pikuk perkotaan, Pulau Lengkuas sangat cocok bagi wisatawan yang ingin menikmati ketenangan alam sekaligus keindahan panorama pantai. Kombinasi antara nilai sejarah, keindahan laut, dan suasana yang menenangkan menjadikan Pulau Lengkuas sebagai salah satu destinasi wisata unggulan di Provinsi Kepulauan Bangka Belitung.", id: '',
    ),
    WisataAlam(
      nama: "Danau Toba",
      lokasi: "Sumatera Utara",
      imagePath: "assets/images/danau_toba.jpg",
      rating: 4.9,
      harga: 400000,
      deskripsi:
        "Danau Toba merupakan danau vulkanik terbesar di Asia Tenggara dan salah satu danau terbesar di dunia. Danau ini terbentuk dari letusan gunung supervulkan sekitar 74.000 tahun yang lalu, yang menjadikannya memiliki nilai geologis dan sejarah alam yang sangat tinggi."
        "Di tengah Danau Toba terdapat Pulau Samosir, sebuah pulau vulkanik yang menjadi pusat kebudayaan masyarakat Batak. Wisatawan dapat menikmati keindahan alam danau yang dikelilingi perbukitan hijau, udara sejuk pegunungan, serta panorama matahari terbit dan terbenam yang menakjubkan."
        "Selain keindahan alamnya, Danau Toba juga menawarkan wisata budaya melalui rumah adat Batak, pertunjukan seni tradisional, serta kuliner khas daerah. Kombinasi antara panorama alam yang megah, kekayaan budaya, dan suasana yang tenang menjadikan Danau Toba sebagai salah satu destinasi wisata unggulan nasional dan internasional di Indonesia.", id: '',
    ),
    WisataAlam(
      nama: "Pantai Penyusuk",
      lokasi: "Bangka Belitung",
      imagePath: "assets/images/pantai_penyusuk.jpg",
      rating: 4.9,
      harga: 300000,
      deskripsi:
        "Pantai Penyusuk merupakan salah satu pantai eksotis yang terletak di Bangka Belitung dan dikenal dengan formasi bebatuan granit besar yang tersebar di sepanjang garis pantainya. Keunikan batuan granit ini menciptakan panorama alam yang khas dan menjadi daya tarik utama bagi wisatawan."
        "Pantai ini memiliki suasana yang relatif tenang dan belum terlalu ramai, sehingga cocok bagi pengunjung yang ingin menikmati ketenangan alam, bersantai, atau sekadar menikmati hembusan angin laut. Air lautnya yang jernih serta pasir putih yang bersih menjadikan Pantai Penyusuk ideal untuk berjalan santai di tepi pantai dan menikmati pemandangan laut lepas."
        "Selain keindahan alamnya, Pantai Penyusuk juga sering dijadikan lokasi fotografi karena pemandangan matahari terbit dan terbenamnya yang indah. Kombinasi antara batu granit, laut biru, dan suasana yang damai menjadikan pantai ini sebagai salah satu destinasi wisata alam yang wajib dikunjungi di Bangka Belitung.", id: '',
    ),
/// ================= WISATA KULINER =================
WisataKuliner(
  nama: "Gudeg Yu Djum",
  lokasi: "Yogyakarta",
  imagePath: "assets/images/gudeg.jpg",
  rating: 4.6,
  harga: 30000,
  deskripsi:
      "Gudeg Yu Djum merupakan ikon kuliner legendaris Yogyakarta yang telah berdiri puluhan tahun. "
      "Terbuat dari nangka muda yang dimasak berjam-jam dengan santan dan gula aren, gudeg ini memiliki "
      "cita rasa manis yang khas dan autentik. Biasanya disajikan dengan ayam kampung, telur bacem, "
      "sambal krecek, dan nasi hangat.", id: '',
),

WisataKuliner(
  nama: "Rawon Setan",
  lokasi: "Surabaya",
  imagePath: "assets/images/rawon.jpg",
  rating: 4.7,
  harga: 35000,
  deskripsi:
      "Rawon Setan adalah kuliner khas Surabaya yang terkenal dengan kuah hitam pekat dari kluwek. "
      "Rasanya gurih, sedikit pahit, dan sangat kaya rempah. Potongan daging sapi yang empuk dipadukan "
      "dengan tauge pendek, telur asin, dan sambal menjadikannya favorit wisatawan, terutama di malam hari.", id: '',
),

WisataKuliner(
  nama: "Pempek",
  lokasi: "Palembang",
  imagePath: "assets/images/pempek.jpg",
  rating: 4.7,
  harga: 20000,
  deskripsi:
      "Pempek adalah makanan khas Palembang yang terbuat dari campuran ikan dan tepung sagu. "
      "Disajikan dengan kuah cuko berwarna hitam kecokelatan yang asam, manis, dan pedas. "
      "Terdapat berbagai jenis pempek seperti kapal selam, lenjer, dan adaan yang semuanya menggugah selera.", id: '',
),

WisataKuliner(
  nama: "Rendang",
  lokasi: "Sumatera Barat",
  imagePath: "assets/images/rendang.jpg",
  rating: 4.7,
  harga: 80000,
  deskripsi:
      "Rendang adalah masakan khas Minangkabau yang telah diakui sebagai salah satu makanan terenak di dunia. "
      "Daging sapi dimasak perlahan dengan santan dan campuran rempah-rempah hingga menghasilkan rasa gurih, "
      "pedas, dan aroma yang sangat kaya. Rendang juga dikenal tahan lama tanpa bahan pengawet.", id: '',
),

WisataKuliner(
  nama: "Otak-Otak",
  lokasi: "Kepulauan Riau",
  imagePath: "assets/images/otak_otak.jpg",
  rating: 4.7,
  harga: 25000,
  deskripsi:
      "Otak-otak merupakan makanan berbahan dasar ikan yang dicampur dengan bumbu khas, "
      "dibungkus daun pisang lalu dipanggang. Aroma bakaran daun pisang memberikan cita rasa khas "
      "yang sangat menggugah selera, biasanya disajikan dengan sambal kacang atau sambal pedas.", id: '',
),

WisataKuliner(
  nama: "Mie Bangka",
  lokasi: "Bangka Belitung",
  imagePath: "assets/images/mie_bangka.jpg",
  rating: 4.7,
  harga: 15000,
  deskripsi:
      "Mie Bangka adalah mie khas Bangka Belitung dengan kuah ringan dan gurih. "
      "Disajikan dengan topping ikan, ayam cincang, dan taburan bawang goreng. "
      "Rasanya sederhana namun kaya cita rasa dan sangat cocok dinikmati kapan saja.", id: '',
),

WisataKuliner(
  nama: "Soto Banjar",
  lokasi: "Kalimantan Selatan",
  imagePath: "assets/images/soto_banjar.jpg",
  rating: 4.7,
  harga: 25000,
  deskripsi:
      "Soto Banjar adalah soto khas Kalimantan Selatan dengan kuah bening yang kaya rempah. "
      "Menggunakan ayam suwir, telur rebus, dan perkedel, soto ini memiliki aroma khas kayu manis "
      "dan cengkeh yang membedakannya dari soto daerah lain.", id: '',
),

WisataKuliner(
  nama: "Sate Lilit",
  lokasi: "Bali",
  imagePath: "assets/images/sate_lilit.jpg",
  rating: 4.7,
  harga: 15000,
  deskripsi:
      "Sate Lilit merupakan sate khas Bali yang dibuat dari daging cincang yang dicampur kelapa parut "
      "dan bumbu Bali. Adonan daging dililitkan pada batang serai atau bambu, kemudian dipanggang "
      "hingga menghasilkan aroma yang sangat khas dan menggoda.", id: '',
),

WisataKuliner(
  nama: "Papeda",
  lokasi: "Papua",
  imagePath: "assets/images/papeda.jpg",
  rating: 4.7,
  harga: 10000,
  deskripsi:
      "Papeda adalah makanan pokok khas Papua yang terbuat dari sagu dengan tekstur kenyal dan lengket. "
      "Biasanya disajikan bersama ikan kuah kuning berbumbu rempah. Papeda mencerminkan kearifan lokal "
      "dan budaya makan masyarakat Indonesia Timur.", id: '',
),


     /// ================= WISATA BUDAYA =================
    WisataBudaya(
      nama: "Malioboro",
      lokasi: "Yogyakarta",
      imagePath: "assets/images/malioboro.jpg",
      rating: 4.7,
      harga: 0,
      deskripsi:
          "Jalan ikonik Yogyakarta yang penuh dengan budaya, kuliner, dan oleh-oleh.", id: '',
    ),
    WisataBudaya(
      nama: "Keraton Yogyakarta",
      lokasi: "Yogyakarta",
      imagePath: "assets/images/keraton.jpg",
      rating: 4.8,
      harga: 20000,
      deskripsi:
          "Istana resmi Kesultanan Yogyakarta yang kaya akan nilai sejarah.", id: '',
    ),

    WisataBudaya(
      nama: "Candi Borobudur",
      lokasi: "Magelang, Jawa Tengah",
      imagePath: "assets/images/borobudur.jpg",
      rating: 4.9,
      harga: 50000,
      deskripsi:
          "Candi Borobudur adalah salah satu bangunan bersejarah di Indonesia yang menjadi ikon wisata budaya dan sejarah. "
          "Terletak di Magelang, Jawa Tengah, candi ini dibangun pada masa Dinasti Syailendra sekitar abad ke-8 hingga ke-9 Masehi. "
          "Borobudur merupakan candi Buddha terbesar di dunia dan menjadi bukti kejayaan peradaban Nusantara pada masa lampau.\n\n"
          "Struktur candi ini terdiri dari tiga bagian utama, yaitu Kamadhatu, Rupadhatu, dan Arupadhatu, yang mencerminkan ajaran Buddha Mahayana "
          "tentang perjalanan menuju pencerahan. Bangunan ini memiliki lebih dari 2.600 panel relief yang menggambarkan kehidupan masyarakat "
          "dan ajaran moral Buddha.\n\n"
          "Borobudur ditetapkan sebagai Situs Warisan Dunia oleh UNESCO pada tahun 1991 dan hingga kini menjadi lokasi perayaan Waisak "
          "bagi umat Buddha dari seluruh dunia.", id: '',
    ),

    WisataBudaya(
      nama: "Candi Prambanan",
      lokasi: "Perbatasan Yogyakarta dan Jawa Tengah",
      imagePath: "assets/images/prambanan.jpg",
      rating: 4.8,
      harga: 50000,
      deskripsi:
          "Candi Prambanan adalah kompleks candi Hindu terbesar di Indonesia yang didedikasikan untuk Trimurti: Brahma, Wisnu, dan Siwa. "
          "Candi ini dibangun pada abad ke-9 Masehi oleh Rakai Pikatan dari Dinasti Sanjaya.\n\n"
          "Prambanan memiliki arsitektur khas Hindu dengan menara utama setinggi 47 meter yang menjulang megah. "
          "Relief-relief pada dinding candi menggambarkan kisah epik Ramayana yang hingga kini masih dipentaskan "
          "dalam pertunjukan seni budaya.\n\n"
          "Sebagai salah satu bangunan bersejarah di Indonesia, Prambanan menjadi simbol kejayaan peradaban Hindu-Buddha Nusantara.", id: '',
    ),

    WisataBudaya(
      nama: "Benteng Marlborough",
      lokasi: "Bengkulu",
      imagePath: "assets/images/marlborough.jpg",
      rating: 4.7,
      harga: 15000,
      deskripsi:
          "Benteng Marlborough adalah peninggalan kolonial Inggris di Bengkulu yang dibangun pada tahun 1714–1719 oleh Gubernur Joseph Collett. "
          "Benteng ini merupakan benteng terbesar yang pernah dibangun Inggris di Asia Tenggara.\n\n"
          "Benteng ini berfungsi sebagai pusat pertahanan dan perdagangan rempah-rempah. "
          "Bentuknya menyerupai kura-kura jika dilihat dari atas, dengan dinding tebal dan parit pertahanan.\n\n"
          "Kini, Benteng Marlborough menjadi destinasi wisata sejarah yang penting untuk mempelajari jejak kolonialisme di Indonesia.", id: '',
    ),

    WisataBudaya(
      nama: "Fort Rotterdam",
      lokasi: "Makassar, Sulawesi Selatan",
      imagePath: "assets/images/fort_rotterdam.jpg",
      rating: 4.8,
      harga: 10000,
      deskripsi:
          "Benteng Fort Rotterdam merupakan bangunan bersejarah peninggalan Kerajaan Gowa-Tallo yang kemudian dikuasai Belanda "
          "setelah Perjanjian Bongaya tahun 1667.\n\n"
          "Bangunan ini berbentuk menyerupai penyu yang melambangkan kekuatan Kerajaan Gowa di darat dan laut. "
          "Fort Rotterdam pernah menjadi pusat pemerintahan kolonial Belanda di Indonesia Timur.\n\n"
          "Kini, benteng ini berfungsi sebagai museum dan pusat kebudayaan Makassar.", id: '',
    ),

    WisataBudaya(
      nama: "Gedung Merdeka Bandung",
      lokasi: "Jalan Asia-Afrika, Bandung",
      imagePath: "assets/images/gedung_merdeka.jpg",
      rating: 4.8,
      harga: 0,
      deskripsi:
          "Gedung Merdeka Bandung merupakan tempat bersejarah berlangsungnya Konferensi Asia-Afrika tahun 1955 "
          "yang dihadiri oleh 29 negara dari Asia dan Afrika.\n\n"
          "Konferensi ini menghasilkan Dasasila Bandung yang menjadi tonggak lahirnya Gerakan Non-Blok. "
          "Kini, gedung ini berfungsi sebagai Museum Konferensi Asia-Afrika dan simbol perjuangan bangsa-bangsa "
          "untuk meraih kemerdekaan dan kedaulatan.", id: '',
    ),

    WisataBudaya(
      nama: "Tugu Proklamasi",
      lokasi: "Jalan Pegangsaan Timur No. 56, Jakarta",
      imagePath: "assets/images/tugu_proklamasi.jpg",
      rating: 4.8,
      harga: 0,
      deskripsi:
          "Tugu Proklamasi adalah monumen yang dibangun untuk mengenang tempat pembacaan Proklamasi Kemerdekaan "
          "oleh Soekarno pada 17 Agustus 1945.\n\n"
          "Di kompleks ini terdapat patung Soekarno dan Hatta serta teks asli Proklamasi. "
          "Tempat ini menjadi simbol perjuangan bangsa Indonesia dalam meraih kemerdekaan.", id: '',
    ),

    WisataBudaya(
      nama: "Rumah Rengasdengklok",
      lokasi: "Karawang, Jawa Barat",
      imagePath: "assets/images/rengasdengklok.jpg",
      rating: 4.7,
      harga: 0,
      deskripsi:
          "Rumah Rengasdengklok merupakan tempat bersejarah di mana Soekarno dan Hatta diamankan oleh para pemuda "
          "pada 16 Agustus 1945 menjelang Proklamasi.\n\n"
          "Di tempat ini terjadi perdebatan penting antara golongan muda dan tua mengenai waktu proklamasi. "
          "Rumah ini menjadi saksi perjuangan bangsa Indonesia menuju kemerdekaan.", id: '',
    ),
  ];

  /// GET ALL DATA
  static List<Destinasi> getAll() => _destinasiList;

  /// 🔍 SEARCH DESTINASI
  static List<Destinasi> search(String keyword) {
    if (keyword.isEmpty) return _destinasiList;

    final query = keyword.toLowerCase();

    return _destinasiList.where((d) {
      return d.nama.toLowerCase().contains(query) ||
          d.lokasi.toLowerCase().contains(query) ||
          d.deskripsi.toLowerCase().contains(query);
    }).toList();
  }

  static void addDestinasi(Destinasi d) {
    _destinasiList.add(d);
  }
}
