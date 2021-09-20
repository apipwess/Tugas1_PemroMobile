import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> List_NamaPemain = [
    "Beckam",
    "C.Ronaldo",
    "Messi",
    "Neymar",
    "Paquito",
    "Estes",
    "Nana"
  ];
  List<String> List_Negara = [
    "Gatau",
    "Portugal",
    "Argentina",
    "Brazil",
    "Omahmu",
    "Land Of Dawn",
    "Deketnya Paquito"
  ];
  List<String> List_Club = [
    "Arsenal",
    "MU",
    "Mantan Barca",
    "PSG",
    "Fighter",
    "Support",
    "Apakah Kamu ingin.."
  ];

  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Pemain Baru 2021"),
        ),
        body: ListView(children: [
          for (int i = 0; i < List_NamaPemain.length; i++)
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              padding:
                  EdgeInsets.only(left: 30, top: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  CircleAvatar(),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.only(left: 30, top: 30),
                        height: 130,
                        width: 150,
                        color: Colors.orange,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(List_NamaPemain[i]),
                            Text(List_Negara[i]),
                            Text(List_Club[i]),
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
        ]),
      ),
    );
  }
}
