import 'package:flutter/material.dart';
import 'package:futboltabu/gamescreen.dart';
import 'package:futboltabu/mainmenu.dart';

class TimeSelect extends StatefulWidget {
  const TimeSelect({ Key? key }) : super(key: key);

  @override
  _TimeSelectState createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("Sure seçiniz!"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen())),
              child: menuButtons(context, "60 saniye")),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen())),
              child: menuButtons(context, "90 saniye")),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen())),
              child: menuButtons(context, "120 saniye")),
          ],
        ),
      ),
    );
  }
}
