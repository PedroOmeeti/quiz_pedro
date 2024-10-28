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
  int numero = 0;
  int acertos = 0;
  void responder(int resposta) {
      int respostaUsuario = resposta;
      int respostaCorreta = perguntas[numero]['Alternativa correta']; 
      
      if (respostaUsuario == respostaCorreta) {
        setState(() {
          acertos++;
          
        });
      }
      if (numero + 1 == perguntas.length) {
        Navigator.pushReplacementNamed(context, '/resultado', arguments: acertos);
      }

      if (numero < perguntas.length - 1) {
        setState(() {
          numero++;
        });
      } else {
        print('Quiz Finalizado');
      }
    
      
      
    
  }

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

          Titulo1(texto: perguntas[numero]['pergunta'], tamanho: 20),

          EspacamentoH(h: 80),

          ElevatedButton(
            onPressed: () {
              responder(1);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[numero]['respostas'][0],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {
              responder(2);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[numero]['respostas'][1],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {
              responder(3);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[numero]['respostas'][2],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),

          EspacamentoH(h: 40),

          ElevatedButton(
            onPressed: () {
              responder(4);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            child: Text(perguntas[numero]['respostas'][3],
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