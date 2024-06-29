import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PesanDanDaruratScreen extends StatelessWidget {
  const PesanDanDaruratScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/berandaPenggunaScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Pesan',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit_rounded,
              color: Color.fromARGB(255, 58, 180, 242),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/daftarPesanScreen');
              },
              child: Container(
                alignment: Alignment.centerLeft,
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(100, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.ellipses_bubble_fill,
                        size: 30,
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Pesan Pribadi',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/daftarDaruratScreen');
              },
              child: Container(
                alignment: Alignment.centerLeft,
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(100, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.exclamationmark_bubble_fill,
                        size: 30,
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Pesan Darurat',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
