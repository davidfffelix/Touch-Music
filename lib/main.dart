import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  void playSound(int numberSound){
    final player = AudioCache(); // Executa o áudio dos arquivos locais
    player.play('nota$numberSound.wav');
  }

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
                    playSound(1);
                  },
                  child: Text('Clique em mim!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffffd600
                    ),
                  ),
                  onPressed: (){
                    playSound(2);
                  },
                  child: Text('Clique em mim 2!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff00c853
                    ),
                  ),
                    onPressed: (){
                      playSound(3);
                    },
                    child: Text('Clique em mim 3!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffff6d00
                    ),
                  ),
                  onPressed: (){
                    playSound(4);
                  },
                  child: Text('Clique em mim 4!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6200ea
                    ),
                  ),
                  onPressed: (){
                    playSound(5);
                  },
                  child: Text('Clique em mim 5!'),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff757575
                   ),
                  ),
                  onPressed: (){
                    playSound(6);
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
                    playSound(7);
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
