import 'package:flutter/material.dart';
import 'package:temeltasarimlar/ogrenciKayit.dart';
import 'package:temeltasarimlar/ogretmenKayit.dart';
import 'package:temeltasarimlar/sinifEkle.dart';
import 'package:temeltasarimlar/veliEkle.dart';

class Ekle extends StatefulWidget {
  const Ekle({Key? key}) : super(key: key);

  @override
  State<Ekle> createState() => _EkleState();
}

class _EkleState extends State<Ekle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_left),
          color: Colors.black,
        ),
        title: Text(
          "Ekle",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 550.0,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("../assets/background.png"),
                        fit: BoxFit.fitHeight)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 258,
                              height: 47,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.person_add),
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => VeliEkle());
                                },
                                label: Text(
                                  'Veli Ekle',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 258,
                              height: 47,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.person_add),
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => OgrenciKayit());
                                },
                                label: Text(
                                  'Öğrenci Ekle',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 258,
                              height: 47,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.person_add),
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => OgretmenKayit());
                                },
                                label: Text(
                                  'Öğretmen Ekle',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 258,
                              height: 47,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => SinifEkle());
                                },
                                label: Text(
                                  'Sınıf Ekle',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              )),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class butonlar extends StatelessWidget {
  butonlar({
    Key? key,
    required this.en,
    required this.boy,
    required this.text,
    required this.color,
    required this.icon,
  }) : super(key: key);
  final double en;
  final double boy;
  final String text;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: en,
          height: boy,
          child: ElevatedButton.icon(
            icon: icon,
            onPressed: () {},
            label: Text(
              text,
            ),
            style: ElevatedButton.styleFrom(
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          )),
    );
  }
}
