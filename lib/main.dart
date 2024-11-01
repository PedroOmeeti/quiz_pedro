import 'package:flutter/material.dart';
import 'package:quiz_pedro/views/perguntas_view.dart';
import 'package:quiz_pedro/views/resultado_view.dart';
import 'package:quiz_pedro/views/tela_inicial_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/quiz': (context) => PerguntasView(),
        '/resultado': (context) => ResultadoView(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: const Text('Welcome to Flutter'),
        // ),
        body: TelaInicial(),
      ),
    );
  }
}

