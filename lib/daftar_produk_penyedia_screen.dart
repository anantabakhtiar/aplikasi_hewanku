import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarProdukPenyediaScreen extends StatelessWidget {
  const DaftarProdukPenyediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/detailLayananPetshopPenyediaScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
          ),
        ),
        title: Center(
          child: Text(
            'Berkah Pet Shop',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tambahProdukScreen');
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _kategori.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(100, 0, 0, 0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  _kategori[index],
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: const Color.fromARGB(150, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.70,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/detailProdukPenyediaScreen');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(150, 0, 0, 0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            'images/FotoProduk.png',
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Whiskas Dry Junior Mackerel Flavour 1 Kg',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Rp. 27.000',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color.fromARGB(100, 0, 0, 0),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

final List<String> _kategori = <String>[
  'Konsumsi',
  'Obat',
  'Aksesoris',
  'Kebersihan',
  'Kandang',
  'lainnya'
];

class Produk {
  final String produkImage;
  final String produkName;
  final String produkPrice;

  Produk(
      {required this.produkImage,
      required this.produkName,
      required this.produkPrice});
}

class ProdukData {
  static Produk produk = Produk(
      produkImage: 'images/FotoProduk.png',
      produkName: 'Whiskas Dry Junior Mackerel Flavour 1 Kg',
      produkPrice: '27.000');
}
