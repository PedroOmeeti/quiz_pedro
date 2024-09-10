import 'package:flutter/material.dart';
import 'package:quiz_pedro/components/espacamento_h.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(child: const Text('Quiz Insano',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          )),
        ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo_quiz.png',
              width: 300,
            ),
          ),
          EspacamentoH(h: 200),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/quiz');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: const Text('Iniciar Quiz',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
        ],
      )
    );
  }
}