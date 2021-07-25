import 'package:flutter/material.dart';
import 'package:flutter_application_1/nocedades.dart';
import 'paginauno.dart';
import 'splashscreen.dart';

void main() => runApp(splashscreenuno());

class MyRoutes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },
      // Criando uma função para operar com rotas nomeadas.
      // Usamos esta função para identificar o nome da
      // rota que tem push, e criar a rota para a
      // tela correta.
      onGenerateRoute: (settings) {
        // Se você der push passamos argumentos pela rota
        if (settings.name == PassArgumentsScreen.routeName) {
          // envie os argumentos para a rota correta
          // digite: ScreenArguments.
          final args = settings.arguments as ScreenArguments;

          // Em seguida, extraia os dados necessários dos
          // os argumentos e passar os dados para a
          // tela correta.
          // configuração da estilização da tela
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        // O código suporta apenas
        // PassArgumentsScreen.routeName a partir de agora.
        // Outros valores precisam ser implementados se precisarmos

        assert(false, 'Precisa implemetar ${settings.name}');
        return null;
      },
      title: 'YGODL',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yugioh Duel Link'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ​​botão que navega para uma rota nomeada.
            // A rota nomeada extrai os argumentos
            // sozinha.
            ElevatedButton(
              child: Text(
                'Pagina Principal',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pageuno()),
                );
              },
            ),
            // O ​​botão que navega para uma rota nomeada.
            // Para esta rota, extraia os argumentos em
            // a função onGenerateRoute e envia
            // para a tela definida.
            Padding(padding: EdgeInsets.all(8)),
            ElevatedButton(
              child: Text(
                'Novedades',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => novedad()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Este ​​widget que extrai os argumentos necessários de
// o ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extrai os argumentos do ModalRoute atual
    // configura e e envia como ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

// W​widget aceita os argumentos necessários por meio do
// construtor
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  // Este widget aceita os argumentos como construtor de
  // parâmetros, porém não extrai os argumentos de
  // o ModalRoute.
  // ----------------------------------
  // Os argumentos são extraídos pela função onGenerateRoute
  // declarada no widget MaterialApp.
  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

// Podemos passar qualquer objeto para o parâmetro de argumentos.
// Neste exemplo, criamos uma classe que com título e uma
// mensagem
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
