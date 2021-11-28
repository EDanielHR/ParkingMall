import 'dart:async';

import 'package:flutter/material.dart';

import '../button_widget.dart';

class Cronometro extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Cronometro> {
  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() => seconds--);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTimer(),
              const SizedBox(height: 80),
              buildButtons(),
            ],
          ),
        ),
      );

  Widget buildButtons() {
    return ButtonWidget(
      text: 'Tiempo para salir de la plaza',
      color: Colors.white,
      backgroundColor: Colors.lightBlue,
      onClicked: () {
        startTimer();
      },
    );
  }

  Widget buildTimer() => SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: seconds / maxSeconds,
              valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
              strokeWidth: 9,
              backgroundColor: Colors.redAccent,
            ),
            Center(child: buildTime()),
          ],
        ),
      );

  Widget buildTime() {
    return Text(
      '$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 80,
      ),
    );
  }
}
