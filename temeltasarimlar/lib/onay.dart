// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class onay extends StatefulWidget {
  const onay({Key? key}) : super(key: key);

  @override
  State<onay> createState() => _onayState();
}

class _onayState extends State<onay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 125, left: 3),
                child: Container(
                  width: 354.0,
                  height: 78.0,
                  color: Colors.green,
                ),
              ),
              pozisyonlar(top: 142, left: 28, text: "16", text2: "Pts"),
              pozisyonlar(top: 142, left: 78, text: "17", text2: "Sal"),
              pozisyonlar(top: 134, left: 140, text: "18", text2: "Çar"),
              pozisyonlar(top: 142, left: 203, text: "19", text2: "Per"),
              pozisyonlar(top: 142, left: 249, text: "20", text2: "Cm"),
              pozisyonlar(top: 142, left: 300, text: "21", text2: "Cts"),
              pozisyonlar(top: 142, left: 340, text: "22", text2: "paz"),
              pozisyonlar(top: 142, left: 400, text: "23", text2: "Pts"),
              pozisyonlar(top: 142, left: 450, text: "24", text2: "Sal"),
            ]),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 350,
                    height: 47,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(24)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: const [
                          Text("14:35:00"),
                          Text(
                              "Minikler sınıfı bedensel aktivite çalışmaları.:)")
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Stack(children: [
                        Container(
                          child: Container(
                            width: 230,
                            height: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage("../assets/group10186.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 24),
                          child: Container(
                            width: 180,
                            height: 150,
                            child: Image(
                                image: AssetImage("../assets/Group101.png")),
                            color: Colors.transparent,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      children: [
                        butonlar(
                          color: Colors.green,
                          text: 'Onayla',
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        butonlar(
                          color: Colors.red,
                          text: 'SİL',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 600,
                    height: 47,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(24)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: const [
                          Text("13:26:30"),
                          Text(
                              "Minikler sınıfı bedensel aktivite çalışmasında Ayşe oyunu kazandı.:)")
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Stack(children: [
                        Container(
                          child: Container(
                            width: 230,
                            height: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage("../assets/group10186.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 24),
                          child: Container(
                            width: 180,
                            height: 150,
                            child: Image(
                                image: AssetImage("../assets/Rectangle.png")),
                            color: Colors.transparent,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      children: [
                        butonlar(
                          color: Colors.green,
                          text: 'Onayla',
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        butonlar(
                          color: Colors.red,
                          text: 'SİL',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}

class butonlar extends StatelessWidget {
  const butonlar({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
          primary: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}

class pozisyonlar extends StatelessWidget {
  const pozisyonlar({
    Key? key,
    required this.top,
    required this.left,
    required this.text,
    required this.text2,
  }) : super(key: key);
  final double top;
  final double left;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: Container(
          width: 26,
          height: 32,
          color: Colors.transparent,
          child: ListView(children: [
            Column(
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.grey.shade100),
                ),
              ],
            ),
          ]),
        ));
  }
}
