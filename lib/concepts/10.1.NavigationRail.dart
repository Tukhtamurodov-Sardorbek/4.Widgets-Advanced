import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class NavigationRailWidget2 extends StatefulWidget {
  const NavigationRailWidget2({Key? key}) : super(key: key);
  static const String id = 'navigation_rial2';

  @override
  _NavigationRailWidget2State createState() => _NavigationRailWidget2State();
}

class _NavigationRailWidget2State extends State<NavigationRailWidget2> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/10.1.NavigationRail.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520NavigationRailWidget2%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520NavigationRailWidget2%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27navigation_rial2%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_NavigationRailWidget2State%2520createState%28%29%2520%253D%253E%2520_NavigationRailWidget2State%28%29%253B%250A%257D%250A%250Aclass%2520_NavigationRailWidget2State%2520extends%2520State%253CNavigationRailWidget2%253E%2520%257B%250A%2520%2520int%2520_selectedIndex%2520%253D%25200%253B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520extendBodyBehindAppBar%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.transparent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520automaticallyImplyLeading%253A%2520false%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520elevation%253A%25200%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520Row%28%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520NavigationRail%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520groupAlignment%253A%25201%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520selectedIndex%253A%2520_selectedIndex%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onDestinationSelected%253A%2520%28int%2520index%29%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520setState%28%28%29%2520%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520_selectedIndex%2520%253D%2520index%253B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%257D%29%253B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.blueGrey%252C%250A%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520const%2520CircleAvatar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520foregroundImage%253A%2520AssetImage%28%27assets%252Fimages%252Fimg.png%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520destinations%253A%2520const%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520NavigationRailDestination%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520padding%253A%2520EdgeInsets.only%28bottom%253A%2520100%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520label%253A%2520SizedBox.shrink%28%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520selectedIcon%253A%2520Icon%28Icons.tune%252C%2520color%253A%2520Colors.yellow%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520Icon%28Icons.tune%252C%2520color%253A%2520Colors.white%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520NavigationRailDestination%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520label%253A%2520SizedBox.shrink%28%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520selectedIcon%253A%2520SizedBox%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%252080%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520RotatedBox%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520')));},
          )
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            groupAlignment: 1,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.blueGrey,

            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/img.png'),
            ),

            destinations: const [
              NavigationRailDestination(
                padding: EdgeInsets.only(bottom: 100),
                label: SizedBox.shrink(),
                selectedIcon: Icon(Icons.tune, color: Colors.yellow),
                icon: Icon(Icons.tune, color: Colors.white),
              ),
              NavigationRailDestination(
                label: SizedBox.shrink(),
                selectedIcon: SizedBox(
                  height: 80,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              NavigationRailDestination(
                label: SizedBox.shrink(),
                selectedIcon: SizedBox(
                  height: 80,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              NavigationRailDestination(
                label: SizedBox.shrink(),
                selectedIcon: SizedBox(
                  height: 80,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],

          ),
          Expanded(
            child: Container(
              child: Center(),
            ),
          )
        ],
      ),
    );
  }
}
