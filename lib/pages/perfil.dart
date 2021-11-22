import 'package:flutter/material.dart';

import '../app.dart';
//import '../bottomNav.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

// class Perfil extends StatelessWidget {
class _PerfilState extends State<Perfil> {
  String nombre = '';
  String tarjeta = '';
  String contrasena = '';

  GlobalKey llaveFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: llaveFormulario,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tarjeta/Credito/Debito',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
