import 'package:flutter/material.dart';
import 'main.dart';

class novedad extends StatefulWidget {
  const novedad({Key? key}) : super(key: key);

  @override
  _novedadState createState() => _novedadState();
}

class _novedadState extends State<novedad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOVEDADES!'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Listuno()],
        ),
      ),
    );
  }
}

dynamic Listuno() {
  return Card(
    child: Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Tiendas fisicas'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Nuevos productos'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('numero de contacto'),
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text('Atencion al cliente'),
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Localicacion de proximos torneos'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Image.asset('imagenes/thyy.jpg'),
      ]),
    ),
  );
}
