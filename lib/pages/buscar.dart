import 'package:flutter/material.dart';

//se crea la clase buscar para hacer el buscador
class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscador'),
        actions: <Widget>[
          IconButton(
              //aqui se pone el icono de buscador
              icon: Icon(Icons.search),
              onPressed: () {
                //la barra para el data search
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      body: Column(
        //el cuerpo para poder poner
        //nombre en la pagina y agregar una imagen
        children: [
          Text('Plazas'),
          imageSection(),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

// se usa el widget para agregar imagen
Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/imagenes/plazaandares.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}

//se usa la clase datasearch para poner los
//nombres que van aparecer en el buscador
class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Plaza Andares",
    "Plaza Galerias",
    "Pabellon",
    "Centro Magno",
    "La Gran Plaza",
    "Plaza Forum"
  ];
  // en final recentPlaza son las plazas
  //buscadas recientemente

  final recentPlazas = [
    "Plaza Andares",
    "Plaza Galerias",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
     //las acciones que quiero que se ejecuten en la app
    //en la barra de busqueda
    return [
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // lo que quiero tener en la izquierda de la barra de busqueda 
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {});
  }

  @override
  Widget buildResults(BuildContext context) {
    //se muestran algunos resultados basados en la seleccion
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // se muestra cuando alguien busca algo
    final suggestionList = query.isEmpty
        ? recentPlazas
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.local_mall),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
