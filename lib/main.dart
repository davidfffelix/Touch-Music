import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff303F9F),
                  ),
                  onPressed: () {
                    final player =
                        AudioCache(); // Executa o áudio dos arquivos locais
                    player.play('nota1.wav');
                  },
                  child: Text('Clique em mim!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffffd600
                    ),
                  ),
                  onPressed: (){
                    final player = AudioCache();
                    player.play('nota2.wav');
                  },
                  child: Text('Clique em mim 2!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff00c853
                    ),
                  ),
                    onPressed: (){
                      final player = AudioCache();
                      player.play('nota3.wav');
                    },
                    child: Text('Clique em mim 3!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffff6d00
                    ),
                  ),
                  onPressed: (){
                    final player = AudioCache();
                    player.play('nota4.wav');
                  },
                  child: Text('Clique em mim 4!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6200ea
                    ),
                  ),
                  onPressed: (){
                    final player = AudioCache();
                    player.play('nota5.wav');
                  },
                  child: Text('Clique em mim 5!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff757575
                   ),
                  ),
                  onPressed: (){
                      final player = AudioCache();
                      player.play('nota6.wav');
                  },
                  child: Text('Clique em mim 6!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff212121),
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(12),
                  ),
                  onPressed: (){
                    final player = AudioCache();
                    player.play('nota7.wav');
                  },
                  child: Text('Teste',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
