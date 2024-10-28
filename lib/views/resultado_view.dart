import 'package:flutter/material.dart';
import 'package:quiz_pedro/components/espacamento_h.dart';

class ResultadoView extends StatelessWidget {
  const ResultadoView({super.key});

  @override
  Widget build(BuildContext context) {

    final int acertos = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Quiz Insano',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
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
          Text('Acertos: $acertos',),
          EspacamentoH(h: 80),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: const Text('Voltar'),
          ),
        ],
      ),
    );
  }
}