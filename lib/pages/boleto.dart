import 'package:flutter/material.dart';

//se crea la clase boleto aqui es donde 
// se pone el texto y el comando para agregar imagen
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

//widget para poder poner la imagen con sus medidas hacerla
//grande o chica 
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
