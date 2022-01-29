import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);
  static const String id = 'sliver_appbar';

  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text('SLIVER APP BAR'),

              background: Image(
                image: AssetImage('assets/images/img_3.png'),
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.code, color: Colors.black),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  const SourceCode(carbon: 'assets/carbon/9.SliverAppBar.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520SliverAppBarWidget%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520SliverAppBarWidget%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27sliver_appbar%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_SliverAppBarWidgetState%2520createState%28%29%2520%253D%253E%2520_SliverAppBarWidgetState%28%29%253B%250A%257D%250A%250Aclass%2520_SliverAppBarWidgetState%2520extends%2520State%253CSliverAppBarWidget%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520body%253A%2520CustomScrollView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520slivers%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SliverAppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520expandedHeight%253A%2520220%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520floating%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520pinned%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520snap%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520elevation%253A%252050%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.grey%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520flexibleSpace%253A%2520const%2520FlexibleSpaceBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520Text%28%27SLIVER%2520APP%2520BAR%27%29%252C%250A%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520background%253A%2520Image%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520image%253A%2520AssetImage%28%27assets%252Fimages%252Fimg_3.png%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fit%253A%2520BoxFit.cover%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SliverList%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520delegate%253A%2520SliverChildListDelegate%28_buildList%2850%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%2520%2520Widget%2520_itemList%28int%2520i%29%257B%250A%2520%2520%2520%2520return%2520Container%28%250A%2520%2520%2520%2520%2520%2520height%253A%252050%252C%250A%2520%2520%2520%2520%2520%2520child%253A%2520Center%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Text%28%27%2524i%27%29%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%2520%2520List%253CWidget%253E%2520_buildList%28int%2520count%29%2520%257B%250A%2520%2520%2520%2520List%253CWidget%253E%2520items%2520%253D%2520%255B%255D%253B%250A%2520%2520%2520%2520for%28int%2520i%253D0%253B%2520i%253Ccount%253B%2520i%252B%252B%29%257B%250A%2520%2520%2520%2520%2520%2520items.add%28_itemList%28i%29%29%253B%250A%2520%2520%2520%2520%257D%250A%2520%2520%2520%2520return%2520items%253B%250A%2520%2520%257D%250A%257D')));},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(50)),
          )
        ],
      )
    );
  }
  Widget _itemList(int i){
    return Container(
      height: 50,
      child: Center(
        child: Text('$i'),
      ),
    );
  }
  List<Widget> _buildList(int count) {
    List<Widget> items = [];
    for(int i=0; i<count; i++){
      items.add(_itemList(i));
    }
    return items;
  }
}
