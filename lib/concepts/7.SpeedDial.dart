import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class SpeedDialWidget extends StatefulWidget {
  const SpeedDialWidget({Key? key}) : super(key: key);
  static const String id = 'speed_dial';

  @override
  _SpeedDialWidgetState createState() => _SpeedDialWidgetState();
}

class _SpeedDialWidgetState extends State<SpeedDialWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Speed Dial', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/7.SpeedDial.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Aflutter_speed_dial%252Fflutter_speed_dial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520SpeedDialWidget%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520SpeedDialWidget%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27speed_dial%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_SpeedDialWidgetState%2520createState%28%29%2520%253D%253E%2520_SpeedDialWidgetState%28%29%253B%250A%257D%250A%250Aclass%2520_SpeedDialWidgetState%2520extends%2520State%253CSpeedDialWidget%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Text%28%27Speed%2520Dial%27%252C%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252025%252C%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520floatingActionButton%253A%2520SpeedDial%28%250A%2520%2520%2520%2520%2520%2520%2520%2520animatedIcon%253A%2520AnimatedIcons.menu_close%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520animatedIconTheme%253A%2520const%2520IconThemeData%28size%253A%252022%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520overlayColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520overlayOpacity%253A%25200.5%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520onOpen%253A%2520%28%29%2520%253D%253E%2520print%28%27OPENING%2520DIAL%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520onClose%253A%2520%28%29%2520%253D%253E%2520print%28%27DIAL%2520CLOSED%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520foregroundColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520shape%253A%2520const%2520CircleBorder%28%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SpeedDialChild%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Icon%28Icons.accessibility%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.red%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520label%253A%2520%27First%27%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520labelStyle%253A%2520const%2520TextStyle%28fontSize%253A%252018%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onTap%253A%2520%28%29%2520%253D%253E%2520print%28%27First%2520Child%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SpeedDialChild%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Icon%28Icons.brush%29')));},
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: const CircleBorder(),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            label: 'First',
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print('First Child'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.brush),
            backgroundColor: Colors.blue,
            label: 'Second',
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print('Second Child'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.keyboard_voice),
            backgroundColor: Colors.green,
            label: 'Third',
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print('Third Child'),
          ),
        ],
      ),
    );
  }
}
