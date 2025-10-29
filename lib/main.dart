import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio Data Science',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Fungsi menentukan fontSize responsif
    double getFontSize(double baseSize) {
      if (screenWidth < 600) return baseSize * 0.6; // HP
      if (screenWidth < 1200) return baseSize * 0.8; // Tablet
      return baseSize; // Desktop
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: false,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: SizedBox(
                width: screenWidth * 0.9, // max width 90% layar
                child: Text(
                  "KLASIFIKASI DAN PREDIKSI PENDAPATAN (ADULT DATASET)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getFontSize(30),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar Header Full Width
                SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: Image.asset('images/a1.png', fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        "Nama: NICO BASTIAN\nNoBP: 23101152630275\n",
                        style: TextStyle(
                          fontSize: getFontSize(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(),
                      Text(
                        "📖 Latar Belakang",
                        style: TextStyle(
                          fontSize: getFontSize(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "        Dataset “Adult” dari UCI Machine Learning Repository digunakan untuk memprediksi apakah seseorang memiliki pendapatan lebih dari \$50.000 per tahun berdasarkan atribut seperti umur, pendidikan, pekerjaan, dan jam kerja. "
                        "Klasifikasi ini penting dalam bidang ekonomi dan sosial untuk memahami faktor-faktor yang memengaruhi kesejahteraan individu.",
                        style: TextStyle(fontSize: getFontSize(18)),
                      ),
                      const Divider(),
                      Text(
                        "📊 Data Collection",
                        style: TextStyle(
                          fontSize: getFontSize(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Menentuka Kebutuhan Data",
                        style: TextStyle(
                          fontSize: getFontSize(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // RichText
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: getFontSize(16),
                            color: Colors.black,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: '⮞ Sumber Data: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text:
                                  'UCI Machine Learning Repository (Adult Dataset)\n',
                            ),
                            TextSpan(
                              text: '⮞ Jumlah Sampel: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: '~32,561\n'),
                            TextSpan(
                              text: '⮞ Fitur: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text:
                                  'age, workclass, education, marital-status, occupation, relationship, race, sex, hours-per-week, native-country\n',
                            ),
                            TextSpan(
                              text: '⮞ Target: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text: 'income (> \$50,000 atau <= \$50,000)',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "⚙️ Integrasi Data",
                        style: TextStyle(
                          fontSize: getFontSize(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Data diintegrasikan menggunakan library Pandas dan NumPy pada Python. "
                        "Data dicek apakah memiliki header dan kolom sesuai format yang diperlukan.",
                        style: TextStyle(fontSize: getFontSize(18)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
