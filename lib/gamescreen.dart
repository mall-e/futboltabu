import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:futboltabu/mainmenu.dart';
import 'package:futboltabu/models/gamecard.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({ Key? key }) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

    int puan = 0;
    int pas = 0;
    Random randomn = Random();
    int randomNum = randomn.nextInt(31);
class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text("Tabu Futbol"),
        backgroundColor: Colors.amber,
        actions: [
          Row(
            children: [
              Text("Puan: $puan"),
              Text("Pas: $pas"),
            ],
          )
        ],

      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Players").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator(),);
          }
          print(snapshot.data!.docs.length);
          List<GameCard> players = snapshot.data!.docs.map(
            (e) => GameCard(e['word'], e['ban1'], e['ban2'], e['ban3'], e['ban4'], e['ban5'])
            ).toList();

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 223, 171),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 0.2,
                        blurRadius: 7,
                        offset: Offset(0.5, 1)
                      )
                    ]
                  ),
                  child: Center(child: Text(players[randomNum].word,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 30.0) ,)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 223, 171),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 0.2,
                        blurRadius: 7,
                        offset: Offset(0.5, 1)
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      menuButtons(context, players[randomNum].ban1),
                      menuButtons(context, players[randomNum].ban2),
                      menuButtons(context, players[randomNum].ban3),
                      menuButtons(context, players[randomNum].ban4),
                      menuButtons(context, players[randomNum].ban5),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                  onPressed: (){
                    setState(() {
                      randomNum = randomn.nextInt(36);
                      puan++;
                      print(randomNum);
                      print(puan);
                    });
                  },
                  child: Text("Doğru")),
                  ElevatedButton(
                  onPressed: (){
                    setState(() {
                      randomNum = randomn.nextInt(36);
                      puan--;
                    });

                  },
                  child: Text("Tabu!")),
                  ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if (pas != 3) {
                        randomNum = randomn.nextInt(36);
                        pas++;
                        print(pas);
                      }
                    });

                  },
                  child: Text("Pas"))
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
