import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreScreenOne extends StatelessWidget {
  const PreScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 100, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset('images/PreScreen1.png'),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Informasi Layanan',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Temukan informasi pelayanan terbaik untuk hewan peliharaan anda',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(100, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 180, 242),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 10,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 0, 0, 0),
                        shape: BoxShape.circle,
                      ),
                      height: 10,
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/preScreenTwo');
                    },
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 58, 180, 242),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
