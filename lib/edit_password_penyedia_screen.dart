import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPasswordPenyediaScreen extends StatefulWidget {
  const EditPasswordPenyediaScreen({super.key});

  @override
  State<EditPasswordPenyediaScreen> createState() =>
      _EditPasswordPenyediaScreenState();
}

class _EditPasswordPenyediaScreenState
    extends State<EditPasswordPenyediaScreen> {
  bool obscureText = true;
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
            'Ubah Password',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                    child: TextField(
                      obscureText: obscureText,
                      obscuringCharacter: '●',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Icon(CupertinoIcons.lock_fill),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(obscureText
                                ? CupertinoIcons.eye_fill
                                : CupertinoIcons.eye_slash_fill),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Password Lama',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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
                    child: TextField(
                      obscureText: obscureText,
                      obscuringCharacter: '●',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Icon(CupertinoIcons.lock_fill),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(obscureText
                                ? CupertinoIcons.eye_fill
                                : CupertinoIcons.eye_slash_fill),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Password Baru',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(100, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
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
      ),
    );
  }
}
