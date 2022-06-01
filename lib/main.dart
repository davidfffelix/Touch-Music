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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff303F9F),
                    ),
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text('Clique em mim!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffffd600
                      ),
                    ),
                    onPressed: (){
                      playSound(2);
                    },
                    child: Text('Clique em mim 2!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff00c853
                      ),
                    ),
                      onPressed: (){
                        playSound(3);
                      },
                      child: Text('Clique em mim 3!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffff6d00
                      ),
                    ),
                    onPressed: (){
                      playSound(4);
                    },
                    child: Text('Clique em mim 4!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff6200ea
                      ),
                    ),
                    onPressed: (){
                      playSound(5);
                    },
                    child: Text('Clique em mim 5!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff757575
                     ),
                    ),
                    onPressed: (){
                      playSound(6);
                    },
                    child: Text('Clique em mim 6!'),
                  ),
                ),

                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff212121),
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(12),
                    ),
                    onPressed: (){
                      playSound(7);
                    },
                    child: Text('Clique em mim 7!'),
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
