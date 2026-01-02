import 'dart:async';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../models/destinasi.dart';
import '../controllers/destinasi_controller.dart';

import 'detail_destinasi_page.dart';
import 'category_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  final User user;
  const HomePage({super.key, required this.user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final TextEditingController _searchController = TextEditingController();

  int _sliderIndex = 0;
  int _bottomIndex = 0;
  Timer? _timer;

  String _searchQuery = '';

  final Color primaryColor = const Color(0xFF1E3A8A);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (_pageController.hasClients) {
        _sliderIndex = (_sliderIndex + 1) % 5;
        _pageController.animateToPage(
          _sliderIndex,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      body: IndexedStack(
        index: _bottomIndex,
        children: [
          _buildHome(),
          const _FaqBody(),
          ProfilePage(user: widget.user),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomIndex,
        onTap: (i) => setState(() => _bottomIndex = i),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_rounded),
            label: "FAQ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Akun",
          ),
        ],
      ),
    );
  }

  /// ================= HOME =================
  Widget _buildHome() {
    final all = DestinasiController.getAll();

    final filtered = _searchQuery.isEmpty
        ? all
        : all.where((d) {
            final q = _searchQuery.toLowerCase();
            return d.nama.toLowerCase().contains(q) ||
                d.lokasi.toLowerCase().contains(q);
          }).toList();

    final alam =
        filtered.where((d) => d.getKategori() == "Wisata Alam").toList();
    final kuliner =
        filtered.where((d) => d.getKategori() == "Wisata Kuliner").toList();
    final budaya =
        filtered.where((d) => d.getKategori() == "Wisata Budaya").toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 270,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 24),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
              ),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(32)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo, ${widget.user.name} 👋",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _searchController,
                  onChanged: (v) => setState(() => _searchQuery = v),
                  decoration: InputDecoration(
                    hintText: "Cari destinasi impianmu...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 190,
            child: PageView(
              controller: _pageController,
              children: const [
                _SliderImage("assets/images/1.jpeg"),
                _SliderImage("assets/images/2.jpeg"),
                _SliderImage("assets/images/3.jpeg"),
                _SliderImage("assets/images/4.jpg"),
                _SliderImage("assets/images/5.jpg"),
              ],
            ),
          ),

          const SizedBox(height: 30),

          _SectionTitle("Destinasi Berdasarkan Kategori"),
          KategoriPreview(title: "Wisata Alam", data: alam),
          KategoriPreview(title: "Wisata Kuliner", data: kuliner),
          KategoriPreview(title: "Wisata Budaya", data: budaya),

          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

/// ================= FAQ (DIRAPIKAN) =================
class _FaqBody extends StatelessWidget {
  const _FaqBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// HEADER FAQ
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
            ),
            borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(32)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "FAQ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Pertanyaan yang sering ditanyakan",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),

        /// LIST FAQ
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
            children: const [
              _FaqItem(
                icon: Icons.favorite_rounded,
                question:
                    "Bagaimana cara menambahkan destinasi ke favorit?",
                answer:
                    "Buka halaman detail destinasi lalu tekan ikon hati (❤️) di pojok kanan atas.",
              ),
              _FaqItem(
                icon: Icons.map_rounded,
                question: "Bagaimana cara menambahkan ke itinerary?",
                answer:
                    "Masuk ke detail destinasi kemudian tekan tombol 'Tambah ke Itinerary'.",
              ),
              _FaqItem(
                icon: Icons.search_rounded,
                question: "Bagaimana cara mencari destinasi?",
                answer:
                    "Gunakan kolom pencarian di halaman Beranda.",
              ),
              _FaqItem(
                icon: Icons.category_rounded,
                question: "Apa saja kategori wisata yang tersedia?",
                answer:
                    "Wisata Alam, Wisata Kuliner, dan Wisata Budaya.",
              ),
              _FaqItem(
                icon: Icons.person_rounded,
                question: "Apakah akun bisa diedit?",
                answer:
                    "Saat ini fitur edit profil belum tersedia.",
              ),
              _FaqItem(
                icon: Icons.security_rounded,
                question: "Apakah data pengguna aman?",
                answer:
                    "Ya, data hanya digunakan di dalam aplikasi.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FaqItem extends StatelessWidget {
  final IconData icon;
  final String question;
  final String answer;

  const _FaqItem({
    required this.icon,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF1E3A8A).withOpacity(0.1),
          child: Icon(icon, color: const Color(0xFF1E3A8A)),
        ),
        title: Text(
          question,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          Text(
            answer,
            style: TextStyle(
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

/// ================= KOMPONEN LAIN (TIDAK DIUBAH) =================
class KategoriPreview extends StatelessWidget {
  final String title;
  final List<Destinasi> data;

  const KategoriPreview({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          CategoryPage(kategori: title, data: data),
                    ),
                  );
                },
                child: const Text("Lihat semua",
                    style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 150,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: data.length > 3 ? 3 : data.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, i) {
              final d = data[i];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          DetailDestinasiPage(destinasi: d),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    d.imagePath,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _SliderImage extends StatelessWidget {
  final String image;
  const _SliderImage(this.image);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 18,
            decoration: BoxDecoration(
              color: const Color(0xFF1E3A8A),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 10),
          Text(title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
