import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialWidget1 extends StatefulWidget {
  const SpeedDialWidget1({Key? key}) : super(key: key);
  static const String id = 'speed_dial1';

  @override
  _SpeedDialWidget1State createState() => _SpeedDialWidget1State();
}

class _SpeedDialWidget1State extends State<SpeedDialWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LESSON'),),
      body: Center(child:Text('SPEED DIAL')),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        direction: SpeedDialDirection.left,
        animatedIconTheme: IconThemeData(size: 23),
        overlayColor: Colors.blueGrey,
        overlayOpacity: 0.5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 30,

        onOpen: (){},
        onClose: (){},

        spaceBetweenChildren: 10,

        children: [
          SpeedDialChild(
              child: Icon(Icons.share_outlined, color: Colors.green,),
              // label: 'Share',
              // labelStyle: TextStyle(fontSize: 18),
              onTap: (){}
          ),
          SpeedDialChild(
              child: Icon(Icons.edit, color: Colors.orange,),
              // label: 'Share',
              // labelStyle: TextStyle(fontSize: 18),
              onTap: (){}
          ),
          SpeedDialChild(
              child: Icon(Icons.update, color: Colors.blue,),
              // label: 'Share',
              // labelStyle: TextStyle(fontSize: 18),
              onTap: (){}
          ),
        ],
      ),
    );
  }
}
