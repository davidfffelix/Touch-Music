import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(TouchMusic());

class TouchMusic extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache(); // Executa os áudios do arquivo local
    player
        .play('nota$numberSound.wav'); // Reproduz o arquivo de áudio escolhido
  }

  Expanded criarBotao({required Color cor, required int numeroDaNota}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: cor,
        ),
        onPressed: () {
          playSound(numeroDaNota);
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
              criarBotao(cor: Color(0xff1a237e), numeroDaNota: 1),
              criarBotao(cor: Color(0xffffff00), numeroDaNota: 2),
              criarBotao(cor: Color(0xff00e676), numeroDaNota: 3),
              criarBotao(cor: Color(0xffff3d00), numeroDaNota: 4),
              criarBotao(cor: Color(0xff6a1b9a), numeroDaNota: 5),
              criarBotao(cor: Color(0xfffafafa), numeroDaNota: 6),
              criarBotao(cor: Color(0xffd50000), numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
