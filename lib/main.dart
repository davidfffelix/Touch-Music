import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(TouchMusic());

class TouchMusic extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache(); // Executa os áudios do arquivo local
    player
        .play('nota$numberSound.wav'); // Reproduz o arquivo de áudio escolhido
  }

  Expanded createButton({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteNumber);
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
              createButton(color: Color(0xff1a237e), noteNumber: 1),
              createButton(color: Color(0xffffff00), noteNumber: 2),
              createButton(color: Color(0xff00e676), noteNumber: 3),
              createButton(color: Color(0xffff3d00), noteNumber: 4),
              createButton(color: Color(0xff6a1b9a), noteNumber: 5),
              createButton(color: Color(0xfffafafa), noteNumber: 6),
              createButton(color: Color(0xffd50000), noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
