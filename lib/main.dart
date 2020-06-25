import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void playSound(int node)
{
  final player = AudioCache();
  player.play('note$node.wav');
}
 Expanded buildKey({Color color, int node})
 {
   return Expanded(
     child: FlatButton(
       color: color,
       onPressed: () {
         playSound(node);
       },
     ),
   );
 }
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            buildKey(color: Colors.red, node: 1),
            buildKey(color:Colors.orange,node: 2),
            buildKey(color:Colors.yellow,node: 3),
            buildKey(color:Colors.green,node: 4),
            buildKey(color:Colors.pink,node: 5),
            buildKey(color:Colors.indigo,node: 6),
            buildKey(color:Colors.teal,node: 7),

          ],
        )),
      ),
    );
  }
}
