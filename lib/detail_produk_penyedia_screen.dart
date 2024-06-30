import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProdukPenyediaScreen extends StatelessWidget {
  const DetailProdukPenyediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 180, 242),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/daftarProdukPenyediaScreen');
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
            size: 30,
          ),
        ),
        title: Center(
          child: Text(
            'Konsumsi',
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
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: const EdgeInsets.only(
                          top: 60, bottom: 60, left: 20, right: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        side: BorderSide(width: 2, color: Colors.blueAccent),
                      ),
                      content: Text(
                        'Ingin Menghapus Produk?',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromRGBO(200, 29, 37, 100),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'No',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          200, 29, 37, 100),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/daftarProdukPenyediaScreen');
                              },
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromRGBO(41, 191, 18, 100),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          41, 191, 18, 100),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  });
            },
            icon: const Icon(
              CupertinoIcons.trash_fill,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 58, 180, 242),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: Image.asset(
                      'images/FotoProduk.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 235, left: 20, right: 20),
                  child: Text(
                    'Whiskas Dry Junior Mackerel Flavour 1 Kg',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
                  child: Text(
                    'Whiskas',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 150),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 340),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 58, 180, 242),
                  ),
                  child: Center(
                    child: Text(
                      'Rp. 27.000',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/ubahProdukScreen');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 58, 180, 242),
                    ),
                    child: Text(
                      'Ubah Produk',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 20, bottom: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Tentang Produk',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur. Id pulvinar mollis lorem ac ac mattis lobortis tempor. Integer sit cursus quam turpis habitant rutrum lorem. Duis quis donec vestibulum fermentum a. Arcu habitant quam et vel imperdiet adipiscing eget. Duis cursus posuere risus bibendum enim pellentesque. A sit aliquet aliquet pellentesque. In sollicitudin elementum sem vel sit semper bibendum lacinia augue. Et lacus cursus pellentesque sed egestas. Suspendisse blandit bibendum ligula sem. Tellus viverra massa posuere sed facilisis quam. Faucibus lacinia adipiscing purus facilisi. Bibendum aenean sed sed netus tellus nec mi. Tellus bibendum justo nisi sed tellus. Quisque accumsan suspendisse pellentesque tincidunt dui habitant aliquet imperdiet feugiat. Velit viverra sagittis sed netus tortor sed platea egestas. Dictum ante id mattis nulla amet morbi. Lobortis donec gravida in varius et at mi. Dictum tincidunt accumsan sapien sit cras feugiat. Feugiat ac est vitae enim ac. Mattis faucibus neque pharetra dignissim ornare sit pharetra tortor nunc. Tempus quis est id nunc at. Rhoncus ut cras pellentesque at ornare duis massa tristique in. Viverra eleifend elementum ultrices massa aliquam viverra eget vitae. Sit adipiscing tempus urna tincidunt at cursus lacus diam. Blandit pellentesque facilisis porttitor volutpat sit. Hac aliquam dictum pharetra vulputate etiam orci. Rhoncus vivamus faucibus nunc amet est accumsan bibendum in. Iaculis cras quis dolor at nunc venenatis pretium est tortor. Libero eu laoreet eu velit amet nulla luctus id porttitor. Fames tincidunt mattis tincidunt pharetra tincidunt amet sem. Cursus nulla at lectus vestibulum arcu tortor. Hendrerit phasellus purus nec vitae cras aliquam. Sem donec gravida morbi magna. Nec nam molestie odio sit vel eget interdum nulla. Mi sit leo nisl ipsum amet consectetur vitae metus morbi. Vulputate lorem pellentesque gravida in eleifend. Est commodo arcu massa blandit lectus sapien amet. Mattis nullam ut massa ullamcorper sed. Amet facilisis nulla nibh lobortis leo dolor eget. Nec porttitor nulla vitae pellentesque quis praesent. Libero mollis semper felis pharetra quisque at in leo. Velit mattis nulla vitae iaculis mattis.',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
