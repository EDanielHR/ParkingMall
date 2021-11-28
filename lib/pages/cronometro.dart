import 'dart:async';

import 'package:flutter/material.dart';
// se importo la ventana del boton
import '../button_widget.dart';

//se crea la clase de cronometro
class Cronometro extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

//Se crea la clase para poder hacer las funciones de
// los segundos maximos con los que cuenta el cronometro
//el timepo y segundos que es igual a maximo de segundo
class _MainPageState extends State<Cronometro> {
  static const maxSeconds = 120;
  int seconds = maxSeconds;
  Timer? timer;

//se agrega el periodico de tiempo y su ecuacion
// de tiempo es igual a tiempo periodico por duracion entre segundos
// se debe actualizar en cada segundo
  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() => seconds--);
    });
  }

//se agrega el overraid de crear contexto es igual al Sacffold
//se agrega un cuerpo una columna en child
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

//aqui se crea el metodo para crear el boton de
//para el tiempo para salir de plaza
//se modifican los colores blancos
//se agrega el metodo de iniciar Temporizador
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

// aqui se pone la animacion para que
// cuando empiece la cuenta regresiva
// se pueda ver el tiempo que tiene disponible
// el usuario para salir de la plaza
//se crea un widget de buildTimer con sus medidas
// se crea un Indicador circular de progreso
// se agregan los valores como segundos entre el maximo de segundos
//se pone el valor de estar en verde y luego que empiece en rojo
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

//aqui se agtrega el estilo de texto, su tamaño
// el estilo de los numeros que aparecen en el cronometro
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
