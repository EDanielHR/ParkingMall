import 'package:clase_02/pages/botones.dart';
import 'package:flutter/material.dart';

class Botones extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav bar'),
      ),
      body: Text('Home'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inico'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inico'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inico'),
          ),
        ],
      ),
    );
  }
}
