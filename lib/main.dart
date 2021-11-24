import 'package:flutter/material.dart';
// Aqui se importan las librerias para luego poder hacer las paginas//
// import 'package:flutter svg/flutter_svg.dart';
import 'pages/home.dart';
import 'pages/perfil.dart';
import 'pages/buscar.dart';
import 'pages/boleto.dart';
import 'pages/cronometro.dart';
//import 'pages/countdown-page.dart;';

void main() => runApp(ParkingMall());
// aqui le decimos al main o menu principal que va a correr la app en ParkingMall//

// MyApp Aqui es donde se ve la pantlla principal que corre la app se puede cambiar el
//color de la pestaña superior
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
  // Aqui guardara el estado de la página en que nos encontremos
  // en el bottom navigation bar
  int indexActual = 2; // Pagina inicial = inicio / Home

  // se crea un arreglo el cual se usa  para elegir las pantallas a mostrar para el usuario
  // deberan estar en el orden que aparecen los botones en el bottom navbar de izquierda a derecha
  // empieza en index 0 pero la paagina preseleccionada es inicio (index 2)
  final paginas = [
    Perfil(), // index 0
    Buscar(), // index 1
    Home(), // index 2
    Boleto(), // index 3
    Center(child: Text('Temporizador')), // index 4
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

          // estilo de la barra donde se cambian los colores :
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          showUnselectedLabels: false,

          // menu de la barra: aqui se designan los nombres y los iconos para
          // la barra de menu
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
