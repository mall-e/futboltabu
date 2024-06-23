import 'package:flutter/material.dart';
import 'package:futboltabu/timeselect.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({ Key? key }) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 230, 138),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tabu Futbol", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 40.0),),
            Container(
              width: MediaQuery.of(context).size.width * 80 / 100,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                color: Color.fromARGB(73, 255, 255, 255),
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7.0,
                    offset: Offset(3, 4),
                    spreadRadius: 3.0,
                    color: Colors.black12
                  )
                ]
              ),
              child: Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TimeSelect())),
                      child: menuButtons(context, "Oyuna Başla")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget menuButtons(BuildContext context, String title)
{
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(1, 2),
            spreadRadius: 1.0,
            color: Colors.black38
          )
        ]
      ),
      child: Center(child: Text(title, style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)),
    ),
  );
}
