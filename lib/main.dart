import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  void playSound(int numberSound){
    final player = AudioCache(); // Executa os áudios do arquivo local
    player.play('nota$numberSound.wav'); // Reproduz o arquivo de áudio escolhido
  }

  void createButton(){
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
    );
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
              createButton(),
              createButton(),
              createButton(),
              createButton(),
              createButton(),
              createButton(),
              createButton(),
            ],
          ),
        ),
      ),
    );
  }
}
