import 'dart:ui';

import 'package:flutter/material.dart';

class VeliListe extends StatefulWidget {
  const VeliListe({Key? key}) : super(key: key);

  @override
  State<VeliListe> createState() => _VeliListeState();
}

class _VeliListeState extends State<VeliListe> {
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
          Icon(
            Icons.menu,
            color: Colors.black,
          )
        ],
        title: Text(
          "Veli Liste",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          liste(
            text: 'ALİ DEMİR',
          ),
          padding(),
          liste(
            text: 'MEHMET BÜYÜK',
          ),
          padding(),
          liste(
            text: 'ALİ DEMİR',
          ),
          padding(),
          liste(
            text: 'MEHMET BÜYÜK',
          ),
          padding(),
          liste(
            text: 'ALİ DEMİR',
          ),
          padding(),
          liste(
            text: 'MEHMET BÜYÜK',
          ),
          padding(),
        ],
      ),
    );
  }
}

class padding extends StatelessWidget {
  const padding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        color: Colors.black,
        height: 20,
      ),
    );
  }
}

class liste extends StatelessWidget {
  const liste({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            primary: Colors.red),
        child: const Text('Sil'),
      ),
    );
  }
}
