// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:temeltasarimlar/ekle.dart';
import 'package:temeltasarimlar/giris.dart';
import 'package:temeltasarimlar/ogrenciKayit.dart';
import 'package:temeltasarimlar/ogretmenKayit.dart';
import 'package:temeltasarimlar/onay.dart';
import 'package:temeltasarimlar/sinifEkle.dart';
import 'package:temeltasarimlar/veliEkle.dart';
import 'package:temeltasarimlar/veliEkleListe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Power Kids",
      home: AnaSayfa(),
      //darkTheme: ThemeData.dark(),
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
        iconTheme: IconThemeData(color: Colors.grey.shade300),
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _guncelNo = 0;
  late List<Widget> _icerikler;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _icerikler = [
      onay(),
      GirisEkrani(),
      VeliEkle(),
      OgrenciKayit(),
      Ekle(),
      OgretmenKayit(),
      SinifEkle(),
      VeliListe()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _icerikler[_guncelNo],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _guncelNo,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(
                  Icons.pages,
                ),
                label: 'AnaSayfa'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.report,
                ),
                label: 'Rapor'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: 'Ekle'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: 'Mesaj'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.approval,
                ),
                label: 'Onay'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.face,
                ),
                label: 'Profil'),
          ],
          onTap: (int butontiklama) {
            setState(() {
              _guncelNo = butontiklama;
            });
          },
        ),
      ),
    );
  }
}
