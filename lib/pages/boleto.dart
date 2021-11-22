import 'package:flutter/material.dart';

class Boleto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boleto'),
      ),
      body: Column(
        children: [
          imageSection(),
        ],
      ),
    );
  }
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/imagenes/boleto01ps.jpg',
      width: 600,
      height: 500,
      fit: BoxFit.cover,
    ),
  );
}
