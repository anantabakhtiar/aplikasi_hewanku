import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarDaruratScreen extends StatelessWidget {
  const DaftarDaruratScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/pesanDanDaruratScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Pesan Darurat',
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
                Navigator.pushNamed(context, '/detailLayananPethelpScreen');
              },
              child: Container(
                width: 500,
                height: 100,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(100, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pertolongan Konsumsi',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Halo semua, kalo kalian lewat sekitaran jalan utama tolong bantu kasih makan kucing oren ini ya, terima kasih.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(100, 0, 0, 0),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '14.25',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(100, 0, 0, 0),
                          ),
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
          ],
        ),
      ),
    );
  }
}
