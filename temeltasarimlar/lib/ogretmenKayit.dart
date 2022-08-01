import 'package:flutter/material.dart';

class OgretmenKayit extends StatefulWidget {
  const OgretmenKayit({Key? key}) : super(key: key);

  @override
  State<OgretmenKayit> createState() => _OgretmenKayitState();
}

class _OgretmenKayitState extends State<OgretmenKayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_left),
          color: Colors.black,
        ),*/
        title: Text(
          "Öğretmen Ekle",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                  child: Text(
                    "Öğretmen Kayıt",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 24.0),
                  ),
                ),
              ),
              Container(
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
                              label: Text("Soyisim"), icon: Icon(Icons.person)),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
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
                          )),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
