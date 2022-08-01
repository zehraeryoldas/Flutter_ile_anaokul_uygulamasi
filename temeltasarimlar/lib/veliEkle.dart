// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:temeltasarimlar/veliEkleListe.dart';

class VeliEkle extends StatefulWidget {
  const VeliEkle({Key? key}) : super(key: key);

  @override
  State<VeliEkle> createState() => _VeliEkleState();
}

class _VeliEkleState extends State<VeliEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_left),
          color: Colors.black,
        ),*/
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: (context) => VeliListe());
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
        title: Text(
          "Veli Ekle",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Veli Kayıt",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 24.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 400.0,
                  height: 350.0,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 315,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15.5)),
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                label: Text("isim"), icon: Icon(Icons.person)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 315,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15.5)),
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                label: Text("Soyisim"),
                                icon: Icon(Icons.person)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 315,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15.5)),
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                label: Text("Email"), icon: Icon(Icons.email)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 315,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15.5)),
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                label: Text("Telefon"), icon: Icon(Icons.call)),
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Kaydet"),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ))),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
