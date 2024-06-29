import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatLayananKesehatanScreen extends StatelessWidget {
  const ChatLayananKesehatanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/detailLayananKesehatanScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('images/FotoProfil.jpg'),
                radius: 20,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Klinik Dandelion',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(100, 58, 180, 242),
                        ),
                        child: Center(
                          child: TextField(
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Ketik Pesan',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(100, 0, 0, 0),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Icon(
                                    CupertinoIcons.camera_fill,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(100, 58, 180, 242),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.send_rounded,
                          color: Color.fromRGBO(0, 0, 0, 100),
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
