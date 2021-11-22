import 'package:flutter/material.dart';

// import 'package:flutter svg/flutter_svg.dart';
import 'pages/home.dart';
import 'pages/perfil.dart';
import 'pages/buscar.dart';
import 'pages/boleto.dart';
import 'pages/cronometro.dart';
import 'pages/ajustes.dart';
//import 'pages/countdown-page.dart;';

void main() => runApp(ParkingMall());

// MyApp
class ParkingMall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navegacion(),
    );
  }
}

class Navegacion extends StatefulWidget {
  @override
  _NavegacionEstado createState() => _NavegacionEstado();
}

class _NavegacionEstado extends State<Navegacion> {
  // Guardara el estado de la página en que nos encontremos
  // en el bottom navigation bar
  int indexActual = 2; // Pagina inicial = inicio / Home

  // creamos un arreglo el cual usaremos para elegir las pantallas a mostrar para el usuario
  // deberan estar en el orden que aparecen los botones en el bottom navbar de izquierda a derecha
  // empieza en index 0 pero la paagina preseleccionada es inicio (index 2)
  final paginas = [
    Perfil(), // index 0
    Buscar(), // index 1
    Home(), // index 2
    Boleto(), // index 3
    Center(child: Text('Cronometro')), // index 4
    // Cronometro(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: indexActual,
          children: paginas,
        ),
        // Esta es la barra de navegación que contendra el menu al que podrá
        // acceder el usuario
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          // estilo de la barra:
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showUnselectedLabels: false,

          // menu de la barra:
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_parking_rounded),
              label: 'Boleto',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_rounded),
              label: 'Cronómetro',
            ),
          ],
          currentIndex: indexActual,
          onTap: (index) => setState(() => indexActual = index),
        ),
      );
}
