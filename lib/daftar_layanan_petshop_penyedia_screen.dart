import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarLayananPetshopPenyediaScreen extends StatelessWidget {
  const DaftarLayananPetshopPenyediaScreen({super.key});

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
              Navigator.pushNamed(context, '/berandaPenyediaScreen');
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
              Image.asset('icons/LayananPetshopIcon.png'),
              const SizedBox(
                height: 10,
              ),
              Text(
                'LAYANAN PET SHOPKU',
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
                Navigator.pushNamed(context, '/tambahLayananPetshopScreen');
              },
              icon: const Icon(
                CupertinoIcons.add,
                color: Colors.white,
                size: 30,
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
                'Ayo buatlah dan berikan juga informasi pelayananan petshopmu sendiri disini!',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 100),
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
                          context, '/detailLayananPetshopPenyediaScreen');
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
                                  'Berkah Pet Shop',
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
