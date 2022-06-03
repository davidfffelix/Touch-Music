import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache(); // Executa os áudios do arquivo local
    player
        .play('nota$numberSound.wav'); // Reproduz o arquivo de áudio escolhido
  }

  Expanded createButton({required Color color, required int numberNote}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(numberNote);
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
              createButton(color: Color(0xff1a237e), numberNote: 1),
              createButton(color: Color(0xffffff00), numberNote: 2),
              createButton(color: Color(0xff00e676), numberNote: 3),
              createButton(color: Color(0xffff3d00), numberNote: 4),
              createButton(color: Color(0xff6a1b9a), numberNote: 5),
              createButton(color: Color(0xfffafafa), numberNote: 6),
              createButton(color: Color(0xffd50000), numberNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
