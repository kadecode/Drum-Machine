import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MachineDrum());
}

class MachineDrum extends StatelessWidget {
  final player = AudioCache();

  MachineDrum({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: FullScreen(),
      ),
    );
  }
}

class FullScreen extends StatelessWidget {
  final player = AudioCache();

  void sounCall(String soun) {
    player.play('$soun.wav');
  }

  FullScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('bip', Colors.blueAccent),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(
                        child: buildFlatButton('bongo', Colors.deepOrange),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('clap1', Colors.red),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(
                        child: buildFlatButton('clap2', Colors.lightGreen),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('clap3', Colors.pink),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(
                        child: buildFlatButton('crash', Colors.blueGrey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('how', Colors.amber),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(
                        child: buildFlatButton('oobah', Colors.purple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildFlatButton('ridebel', Colors.brown),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(
                        child: buildFlatButton('woo', Colors.cyanAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildFlatButton(String soun, Color renk) {
    return FlatButton(
      padding: const EdgeInsets.all(6),
      onPressed: () {
        sounCall(soun);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
