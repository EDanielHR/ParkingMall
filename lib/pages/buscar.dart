import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscador'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      body: Column(
        children: [
          Text('Plazas'),
          imageSection(),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

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

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Plaza Andares",
    "Plaza Galerias",
    "Pabellon",
    "Centro Magno",
    "La Gran Plaza",
    "Plaza Forum"
  ];

  final recentPlazas = [
    "Plaza Andares",
    "Plaza Galerias",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {});
  }

  @override
  Widget buildResults(BuildContext context) {
    // mostar algunos resultados basados en la seleccion
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // mostrar cuando alguien busca algo
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
