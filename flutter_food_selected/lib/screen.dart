import 'package:flutter/material.dart';
import 'dart:math';

class BugunNeYesem extends StatefulWidget {
  @override
  State<BugunNeYesem> createState() => _BugunNeYesemState();
}

class _BugunNeYesemState extends State<BugunNeYesem> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;
  List<String> corbaAdlari = ["Mercimek", "Tarhana", "Tavuksuyu", "Düğün Çorbası", "Yoğurtlu Çorba"];
  List<String> yemekAdlari = ["Karnıyarık", "Mantı", "Kuru Fasulye", "İçli Köfte", "Balık"];
  List<String> tatliAdlari = ["Kadayıf", "Baklava", "Sütlaç", "Kazandibi", "Dondurma"];

  void button() {
    setState(() {
      corbaNo++;
      if (corbaNo == 6) {
        corbaNo = 1;
      }
      yemekNo++;
      if (yemekNo == 6) {
        yemekNo = 1;
      }
      tatliNo++;
      if (tatliNo == 6) {
        tatliNo = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    //highlightColor: Colors.blue[300],
                    //splashColor: Colors.red,
                    onPressed: button,
                    child: Image.asset("images/corba_$corbaNo.jpg")),
              )),
              Text(corbaAdlari[corbaNo - 1]),
              Container(
                width: 270,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    //highlightColor: Colors.blue[300],
                    //splashColor: Colors.red,
                    onPressed: button,
                    child: Image.asset("images/yemek_$yemekNo.jpg")),
              )),
              Text(yemekAdlari[yemekNo - 1]),
              Container(
                width: 270,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    //highlightColor: Colors.blue[300],
                    //splashColor: Colors.red,
                    onPressed: button,
                    child: Image.asset("images/tatli_$tatliNo.jpg")),
              )),
              Text(tatliAdlari[tatliNo - 1]),
              Container(
                width: 270,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
