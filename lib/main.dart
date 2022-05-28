import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                TextButton(
                onPressed: (){
                  final player = AudioCache(); // Executa o áudio dos arquivos locais
                  player.play('nota1.wav');
                },
                child: Text('Clique em mim!'),
               ),
              ],
            ),
            ),
          ),
        ),
      );
  }
}