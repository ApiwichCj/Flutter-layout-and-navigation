import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member in Group"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.red,
              blocktext: "Apiwich Upukdee",
              nick: "Nickname : Chinjung",
              id: "Student ID : 633410038-0",
              des: "Description : กะเต๋ว is the best",
              bd: "BirthDay : 24 January 2002",
              img: "assets/images/cj.jpg"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "Pongsakorn Arkasri",
              nick: "Nick name : Fa",
              id: "Student ID : 633410019-4",
              des: "Description : ฟาหล่อมากๆโสดด้วย",
              bd: "BirthDay : 9 April 2001",
              img: "assets/images/fa.jpg"),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "Pochcharapon Konpian",
              nick: "Nick name : Patty",
              id: "Student ID : 633410020-9",
              des: "Description : I am H4ck3r",
              bd: "BirthDay : 22 April 2002",
              img: "assets/images/pat.jpg"),
          Card(
              context: context,
              color: Colors.yellow,
              blocktext: "Nattaphon Wongphumee",
              nick: "Nick name : Natty",
              id: "Student ID : 633410012-8",
              des:
                  "Description : GGEZ นะ เป็นของเล่นให้เราเล่นต่อไปก็ดีอยู่แล้ว",
              bd: "BirthDay : 24/09/2001",
              img: "assets/images/nt.jpg"),
        ],
      ),
    );
  }

  Widget Card({
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String nick,
    required String id,
    required String des,
    required String bd,
    required String img,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: blocktext,
                        nickname: nick,
                        id: id,
                        des: des,
                        bd: bd,
                        img: img,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 100, backgroundImage: NetworkImage(img)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              //margin: EdgeInsets.all(10),
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(blocktext),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({
    required this.name,
    required this.nickname,
    required this.id,
    required this.des,
    required this.bd,
    required this.img,
  });
  String name;
  String nickname;
  String id;
  String des;
  String bd;
  String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(children: [
            CircleAvatar(radius: 100, backgroundImage: NetworkImage(img)),
            Text(name),
            Text(nickname),
            Text(id),
            Text(des),
            Text(bd),
          ]),
        ));
  }
}
