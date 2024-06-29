import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarLayananKecantikanScreen extends StatelessWidget {
  const DaftarLayananKecantikanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 170,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: Container(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/berandaPenggunaScreen');
            },
            icon: const Icon(
              CupertinoIcons.chevron_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        title: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset('icons/LayananKecantikanIcon.png'),
              const SizedBox(
                height: 10,
              ),
              Text(
                'LAYANAN KECANTIKAN',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/daftarLayananKecantikanTersimpanScreen');
              },
              icon: const Icon(
                CupertinoIcons.bookmark_fill,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                'Jelajahi dan nikmatilah pelayananan kecantikan terbaik untuk hewan peliharaanmu disini!',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 50),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/detailLayananKecantikanScreen');
                    },
                    child: Container(
                      width: 500,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(217, 217, 217, 100),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Salon Happy Pet',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Buka',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          41, 191, 18, 100)),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.chevron_forward,
                              size: 30,
                              color: Color.fromARGB(255, 58, 180, 242),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: 500,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(217, 217, 217, 100),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Salon Purnama',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Tutup',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(200, 29, 37, 100),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.chevron_forward,
                              size: 30,
                              color: Color.fromARGB(255, 58, 180, 242),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: 500,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(217, 217, 217, 100),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Salon Sinar Jaya',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Tutup',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(200, 29, 37, 100),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.chevron_forward,
                              size: 30,
                              color: Color.fromARGB(255, 58, 180, 242),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: 500,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(217, 217, 217, 100),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Salon Rita',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Buka',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          41, 191, 18, 100)),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.chevron_forward,
                              size: 30,
                              color: Color.fromARGB(255, 58, 180, 242),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: 500,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(217, 217, 217, 100),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Salon Pujaan Abadi',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Buka',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          41, 191, 18, 100)),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.chevron_forward,
                              size: 30,
                              color: Color.fromARGB(255, 58, 180, 242),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
