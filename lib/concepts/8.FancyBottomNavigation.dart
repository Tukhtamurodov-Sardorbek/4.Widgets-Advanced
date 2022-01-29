import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class FancyBottom extends StatefulWidget {
  const FancyBottom ({Key? key}) : super(key: key);
  static const String id = 'fancy_bottom_page';

  @override
  _FancyBottomState createState() => _FancyBottomState();
}

class _FancyBottomState extends State<FancyBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Fancy Bottom Navigation', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/8.FancyBottomNavigation.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Afancy_bottom_navigation%252Ffancy_bottom_navigation.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520FancyBottom%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520FancyBottom%2520%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27fancy_bottom_page%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_FancyBottomState%2520createState%28%29%2520%253D%253E%2520_FancyBottomState%28%29%253B%250A%257D%250A%250Aclass%2520_FancyBottomState%2520extends%2520State%253CFancyBottom%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Text%28%27Fancy%2520Bottom%2520Navigation%27%252C%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252018%252C%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520const%2520Center%28child%253A%2520Text%28%27FANCY%2520BOTTOM%2520NAVIGATION%2520BAR%27%29%29%252C%250A%2520%2520%2520%2520%2520%2520bottomNavigationBar%253A%2520FancyBottomNavigation%28%250A%2520%2520%2520%2520%2520%2520%2520%2520circleColor%253A%2520Colors.cyanAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520textColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520barBackgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520inactiveIconColor%253A%2520Colors.cyan%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520activeIconColor%253A%2520Colors.white%252C%250A%250A%2520%2520%2520%2520%2520%2520%2520%2520tabs%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520TabData%28iconData%253A%2520Icons.home_outlined%252C%2520title%253A%2520%27Home%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520TabData%28iconData%253A%2520Icons.search_outlined%252C%2520title%253A%2520%27Search%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520TabData%28iconData%253A%2520Icons.account_circle_outlined%252C%2520title%253A%2520%27Profile%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520onTabChangedListener%253A%2520%28int%2520position%29%2520%257B%257D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%257D')));},
          )
        ],
      ),
      body: const Center(child: Text('FANCY BOTTOM NAVIGATION BAR')),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.cyanAccent,
        textColor: Colors.black,
        barBackgroundColor: Colors.white,
        inactiveIconColor: Colors.cyan,
        activeIconColor: Colors.white,

        tabs: [
          TabData(iconData: Icons.home_outlined, title: 'Home'),
          TabData(iconData: Icons.search_outlined, title: 'Search'),
          TabData(iconData: Icons.account_circle_outlined, title: 'Profile'),
        ],
        onTabChangedListener: (int position) {},
      ),
    );
  }
}
