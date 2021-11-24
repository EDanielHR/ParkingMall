//import 'package:clase02/pages/home.dart';
//import 'package:clase_02/main.dart';
// se importan los paquetes para conectar las paginas con home o incio
import 'package:clase_02/pages/home.dart';
import 'package:flutter/material.dart';

// esto funcionaba para desplegar la barra de menu propuesta por el maestro
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('App Prueba'),
    ),
    body: Home(),
  );
}
