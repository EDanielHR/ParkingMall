import 'dart:ffi';

import 'package:flutter/material.dart';

//se crea la clase de ButtonWidget donde se agrega
// donde se agrega texto de cadena final
// color final 
//fondo de color final
// y manda a llamar el VoidCallback final haciendo click
class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onClicked;

//se definen tambien en el constructor
//el color de los textos y su fondo
  const ButtonWidget({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.backgroundColor = Colors.black,
    required this.onClicked,
  }) : super(key: key);

//Aqui se elgie el tamaño del texto se manda a llamar
//con paratemros para saber que tan horizontal o vertical 
//va estar nuestro texto, tipo de letra y tamaño
  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: color),
        ),
        onPressed: onClicked,
      );
}
