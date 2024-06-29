import 'package:aplikasi_hewanku/beranda_pengguna_screen.dart';
import 'package:aplikasi_hewanku/beranda_penyedia_screen.dart';
import 'package:aplikasi_hewanku/chat_layanan_kecantikan_screen.dart';
import 'package:aplikasi_hewanku/chat_layanan_kesehatan_screen.dart';
import 'package:aplikasi_hewanku/daftar_darurat_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kecantikan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kecantikan_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kecantikan_tersimpan_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kesehatan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kesehatan_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_kesehatan_tersimpan_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_pethelp_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_pethelp_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_pethelp_tersimpan_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_petshop_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_petshop_screen.dart';
import 'package:aplikasi_hewanku/daftar_layanan_petshop_tersimpan_screen.dart';
import 'package:aplikasi_hewanku/daftar_pesan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_pesan_screen.dart';
import 'package:aplikasi_hewanku/daftar_produk_penyedia_screen.dart';
import 'package:aplikasi_hewanku/daftar_produk_screen.dart';
import 'package:aplikasi_hewanku/daftar_user_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_kecantikan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_kecantikan_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_kesehatan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_kesehatan_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_pethelp_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_pethelp_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_petshop_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_layanan_petshop_screen.dart';
import 'package:aplikasi_hewanku/detail_pesan_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_pesan_screen.dart';
import 'package:aplikasi_hewanku/detail_produk_penyedia_screen.dart';
import 'package:aplikasi_hewanku/detail_produk_screen.dart';
import 'package:aplikasi_hewanku/edit_password_penyedia_screen.dart';
import 'package:aplikasi_hewanku/edit_password_screen.dart';
import 'package:aplikasi_hewanku/edit_profil_penyedia_screen.dart';
import 'package:aplikasi_hewanku/edit_profil_screen.dart';
import 'package:aplikasi_hewanku/masuk_user_screen.dart';
import 'package:aplikasi_hewanku/pesan_dan_darurat_screen.dart';
import 'package:aplikasi_hewanku/pre_screen_two.dart';
import 'package:aplikasi_hewanku/profil_penyedia_screen.dart';
import 'package:aplikasi_hewanku/profil_screen.dart';
import 'package:aplikasi_hewanku/tambah_layanan_kecantikan_screen.dart';
import 'package:aplikasi_hewanku/tambah_layanan_kesehatan_screen.dart';
import 'package:aplikasi_hewanku/tambah_layanan_pethelp_screen.dart';
import 'package:aplikasi_hewanku/tambah_layanan_petshop_screen.dart';
import 'package:aplikasi_hewanku/tambah_produk_screen.dart';
import 'package:aplikasi_hewanku/ubah_layanan_kecantikan_screen.dart';
import 'package:aplikasi_hewanku/ubah_layanan_kesehatan_screen.dart';
import 'package:aplikasi_hewanku/ubah_layanan_pethelp_screen.dart';
import 'package:aplikasi_hewanku/ubah_layanan_petshop_screen.dart';
import 'package:aplikasi_hewanku/ubah_produk_screen.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_hewanku/pre_screen_one.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PreScreenOne(),
        '/preScreenTwo': (context) => const PreScreenTwo(),
        '/daftarUserScreen': (context) => const DaftarUserScreen(),
        '/masukUserScreen': (context) => const MasukUserScreen(),
        '/berandaPenggunaScreen': (context) => const BerandaPenggunaScreen(),
        '/profilScreen': (context) => const ProfilScreen(),
        '/editProfilScreen': (context) => const EditProfilScreen(),
        '/editPasswordScreen': (context) => const EditPasswordScreen(),
        '/profilPenyediaScreen': (context) => const ProfilPenyediaScreen(),
        '/editProfilPenyediaScreen': (context) =>
            const EditProfilPenyediaScreen(),
        '/editPasswordPenyediaScreen': (context) =>
            const EditPasswordPenyediaScreen(),
        '/daftarPesanScreen': (context) => const DaftarPesanScreen(),
        '/pesanDanDaruratScreen': (context) => const PesanDanDaruratScreen(),
        '/daftarDaruratScreen': (context) => const DaftarDaruratScreen(),
        '/daftarLayananKesehatanScreen': (context) =>
            const DaftarLayananKesehatanScreen(),
        '/daftarLayananKecantikanScreen': (context) =>
            const DaftarLayananKecantikanScreen(),
        '/daftarLayananPetshopScreen': (context) =>
            const DaftarLayananPetshopScreen(),
        '/daftarLayananPethelpScreen': (context) =>
            const DaftarLayananPethelpScreen(),
        '/detailLayananKesehatanScreen': (context) =>
            const DetailLayananKesehatanScreen(),
        '/detailLayananKecantikanScreen': (context) =>
            const DetailLayananKecantikanScreen(),
        '/detailLayananPetshopScreen': (context) =>
            const DetailLayananPetshopScreen(),
        '/detailLayananPethelpScreen': (context) =>
            const DetailLayananPethelpScreen(),
        '/detailPesanScreen': (context) => const DetailPesanScreen(),
        '/daftarProdukScreen': (context) => const DaftarProdukScreen(),
        '/detailProdukScreen': (context) => const DetailProdukScreen(),
        '/berandaPenyediaScreen': (context) => const BerandaPenyediaScreen(),
        '/daftarPesanPenyediaScreen': (context) =>
            const DaftarPesanPenyediaScreen(),
        '/detailPesanPenyediaScreen': (context) =>
            const DetailPesanPenyediaScreen(),
        '/daftarLayananKesehatanPenyediaScreen': (context) =>
            const DaftarLayananKesehatanPenyediaScreen(),
        '/detailLayananKesehatanPenyediaScreen': (context) =>
            const DetailLayananKesehatanPenyediaScreen(),
        '/daftarLayananKecantikanPenyediaScreen': (context) =>
            const DaftarLayananKecantikanPenyediaScreen(),
        '/detailLayananKecantikanPenyediaScreen': (context) =>
            const DetailLayananKecantikanPenyediaScreen(),
        '/daftarLayananPetshopPenyediaScreen': (context) =>
            const DaftarLayananPetshopPenyediaScreen(),
        '/detailLayananPetshopPenyediaScreen': (context) =>
            const DetailLayananPetshopPenyediaScreen(),
        '/daftarProdukPenyediaScreen': (context) =>
            const DaftarProdukPenyediaScreen(),
        '/detailProdukPenyediaScreen': (context) =>
            const DetailProdukPenyediaScreen(),
        '/daftarLayananPethelpPenyediaScreen': (context) =>
            const DaftarLayananPethelpPenyediaScreen(),
        '/detailLayananPethelpPenyediaScreen': (context) =>
            const DetailLayananPethelpPenyediaScreen(),
        '/tambahLayananKesehatanScreen': (context) =>
            const TambahLayananKesehatanScreen(),
        '/ubahLayananKesehatanScreen': (context) =>
            const UbahLayananKesehatanScreen(),
        '/tambahLayananKecantikanScreen': (context) =>
            const TambahLayananKecantikanScreen(),
        '/ubahLayananKecantikanScreen': (context) =>
            const UbahLayananKecantikanScreen(),
        '/tambahLayananPetshopScreen': (context) =>
            const TambahLayananPetshopScreen(),
        '/ubahLayananPetshopScreen': (context) =>
            const UbahLayananPetshopScreen(),
        '/tambahLayananPethelpScreen': (context) =>
            const TambahLayananPethelpScreen(),
        '/ubahLayananPethelpScreen': (context) =>
            const UbahLayananPethelpScreen(),
        '/tambahProdukScreen': (context) => const TambahProdukScreen(),
        '/ubahProdukScreen': (context) => const UbahProdukScreen(),
        '/daftarLayananKesehatanTersimpanScreen': (context) =>
            const DaftarLayananKesehatanTersimpanScreen(),
        '/chatLayananKesehatanScreen': (context) =>
            const ChatLayananKesehatanScreen(),
        '/daftarLayananKecantikanTersimpanScreen': (context) =>
            const DaftarLayananKecantikanTersimpanScreen(),
        '/daftarLayananPetshopTersimpanScreen': (context) =>
            const DaftarLayananPetshopTersimpanScreen(),
        '/daftarLayananPethelpTersimpanScreen': (context) =>
            const DaftarLayananPethelpTersimpanScreen(),
            '/chatLayananKecantikanScreen': (context) =>
            const ChatLayananKecantikanScreen(),
      },
    );
  }
}
