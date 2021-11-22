import 'package:flutter/material.dart';

import '../app.dart';

class Cronometro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cronometro'),
      ),
      body: Column(
        children: [
          Text('Tiempo'),
          imageSection(),
        ],
      ),
    );
  }
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/imagenes/cronometro01.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}