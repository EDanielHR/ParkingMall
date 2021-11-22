import 'package:flutter/material.dart';

import '../app.dart';

class Ajustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Column(
        children: [
          Text('Soporte Tecnico'),
          imageSection(),
        ],
      ),
    );
  }
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/imagenes/ajustes01.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}
