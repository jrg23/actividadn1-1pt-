import 'main.dart';
import 'package:flutter/material.dart';

class pageuno extends StatefulWidget {
  const pageuno({Key? key}) : super(key: key);

  @override
  _pageunoState createState() => _pageunoState();
}

class _pageunoState extends State<pageuno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME!'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Deckmeta(),
          ],
        ),
      ),
    );
  }
}

dynamic Deckmeta() {
  return Card(
    child: Card(
      color: Colors.blue.shade100,
      child: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'imagenes/tht.jpg',
            ),
            Divider(),
            Text(
              'DECKS META BRASIL 2021',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'imagenes/salve-.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'imagenes/salve-.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'imagenes/salve-.png',
                    width: 50,
                    height: 50,
                  ),
                  //buscar iconos
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
