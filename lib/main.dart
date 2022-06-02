import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  void playSound(int numberSound){
    final player = AudioCache(); // Executa os áudios do arquivo local
    player.play('nota$numberSound.wav'); // Reproduz o arquivo de áudio escolhido
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
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
                  child: Container(),
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
                  child: Container(),
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
                    child: Container(),
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
                  child: Container(),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xfffafafa
                    ),
                  ),
                  onPressed: (){
                    playSound(5);
                  },
                  child: Container(),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffd50000
                   ),
                  ),
                  onPressed: (){
                    playSound(6);
                  },
                  child: Container(),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff212121),
                  ),
                  onPressed: (){
                    playSound(7);
                  },
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
