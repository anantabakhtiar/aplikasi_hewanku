import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilPenyediaScreen extends StatelessWidget {
  const EditProfilPenyediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profilPenyediaScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Profil',
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/FotoProfil.jpg'),
                  radius: 70,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(50, 0, 0, 0),
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    initialValue: 'Ananta Aufa Bakhtiar',
                    enabled: true,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(CupertinoIcons.person_fill),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Ananta Aufa Bakhtiar',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(100, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(50, 0, 0, 0),
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    initialValue: 'anantabakhtiar@gmail.com',
                    enabled: true,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(CupertinoIcons.envelope_fill),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'anantabakhtiar@gmail.com',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(100, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 58, 180, 242),
                  ),
                  child: Center(
                    child: Text(
                      'Ubah',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profilPenyediaScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
