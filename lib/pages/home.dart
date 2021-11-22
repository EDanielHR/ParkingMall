import 'package:flutter/material.dart';

import '../app.dart';
//import '../bottomNav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: columnContent(),
    );
  }
}

Widget columnContent() {
  return Column(
    children: [
      imageSection(),
      textoBody(),
    ],
  );
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/imagenes/parkingapp04.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}

Widget textoBody() {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
    alignment: Alignment.center,
    child: Text(
      'Somos un equipo encargado para que '
      'puedas estacionar tu automovil de una manera '
      'más rapida y sencilla.',
      softWrap: true,
    ),
  );
}

Widget buttonSection() {
  Color color = Colors.black;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _bottonsRow(color, Icons.search, 'Buscar'),
      _bottonsRow(color, Icons.settings, 'Ajustes'),
      _bottonsRow(color, Icons.watch_later_rounded, 'Ubicacion'),
    ],
  );
}

Widget _bottonsRow(Color color, IconData icon, String label) {
  Color color = Colors.black;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 2),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget titleSection() {
  final _textStyle =
      TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 24);

  return Container(
    padding: EdgeInsets.all(32),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.red.shade500,
    ),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Oeschinen Lake Campground', style: _textStyle),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}
