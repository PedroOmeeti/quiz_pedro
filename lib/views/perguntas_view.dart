import 'package:flutter/material.dart';
import 'package:quiz_pedro/components/espacamento_h.dart';
import 'package:quiz_pedro/components/lista.dart';
import 'package:quiz_pedro/components/titulo1.dart';

class PerguntasView extends StatefulWidget {
  const PerguntasView({super.key});

  @override
  State<PerguntasView> createState() => _PerguntasViewState();
}

class _PerguntasViewState extends State<PerguntasView> {
  List perguntas = Lista.perguntas;

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
        
        children: [
          EspacamentoH(h: 40),

          Titulo1(texto: perguntas[0]['pergunta'], tamanho: 20),

          EspacamentoH(h: 80),

          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[0]['respostas'][0],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[0]['respostas'][1],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: const Text('Resposta 3',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: const Text('Resposta 4',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}