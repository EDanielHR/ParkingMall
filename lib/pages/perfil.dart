import 'package:flutter/material.dart';

import '../app.dart';
//import '../bottomNav.dart';

// se crea la clase perfil para poder emperzar con el codigo con
// el perfil de usaurio como contrasena y nombre
class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

// class Perfil se extiende StatelessWidget {
// en este apartado es para poner los nombres
// de las palabras que van aparecer
class _PerfilState extends State<Perfil> {
  String nombre = '';
  String tarjeta = '';
  String contrasena = '';

// el global key funciona para mantener los widget state incluso cuando cambian patrones
  GlobalKey llaveFormulario = GlobalKey<FormState>();

//Se manda a llama la ventana de perfil se usa
// key de la variable llaveformulario
// en donde se ponen tambien nombre de usuario, contraseña y perfil
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

                  ///aqui surge la magia para que aparezcan en anonimo las palabras
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
