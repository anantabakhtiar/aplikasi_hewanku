import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarLayananKecantikanTersimpanScreen extends StatelessWidget {
  const DaftarLayananKecantikanTersimpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/daftarLayananKecantikanScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Layanan Tersimpan',
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.exclamationmark_circle,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Belum ada layanan tersimpan!',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
