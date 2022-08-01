import 'package:flutter/material.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();

  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: containerlar(
                    en: 34.0, boy: 27.0, url: "../assets/vector3.png"),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: containerlar(
                    en: 34.0, boy: 27.0, url: "../assets/vector444.png"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: containerlar(
                    en: 40.0, boy: 40.0, url: "../assets/katman32.png"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: containerlar(
                    en: 37.0, boy: 23.0, url: "../assets/katman33.png"),
              ),
            ),
            Container(
              child: containerlar(
                  en: 212.0, boy: 212.0, url: "../assets/logo11.png"),
            ),
            Container(
              height: 54,
              width: 273,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(31.5)),
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Telefon Numarası"), icon: Icon(Icons.call)),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 54,
              width: 273,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(31.5),
              ),
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    label: Text("Şifre"),
                    icon: Icon(Icons.password)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 189,
                height: 37.33,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("GİRİŞ"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextButton(
                  child: Text("Şifremi Unuttum?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey.shade400)),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 200),
                child: containerlar(
                    en: 52.4, boy: 49, url: '../assets/katman2.png'),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 200),
                child: containerlar(
                    en: 67.0, boy: 44.0, url: "../assets/katman311.png"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: containerlar(
                      en: 38.0, boy: 33.0, url: "../assets/varlik10.png"),
                ),
                Container(
                  child: containerlar(
                      en: 105.0, boy: 123.0, url: "../assets/katman322.png"),
                ),
                Container(
                    child: containerlar(
                        en: 29.0, boy: 25.0, url: "../assets/katman3.png")),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: containerlar(
                        en: 105.0, boy: 123.0, url: "../assets/katman333.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

class containerlar extends StatelessWidget {
  containerlar({
    Key? key,
    required this.en,
    required this.boy,
    required this.url,
  }) : super(key: key);

  final double en;
  final double boy;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: en,
      height: boy,
      child: Image.asset(url),
    );
  }
}
