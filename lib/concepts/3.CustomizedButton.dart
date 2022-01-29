import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomizedButton extends StatefulWidget {
  const CustomizedButton({Key? key}) : super(key: key);
  static const String id = 'customized_button';

  @override
  _CustomizedButtonState createState() => _CustomizedButtonState();
}

class _CustomizedButtonState extends State<CustomizedButton> {
  int? _value = 1;

  Map<String, String> links = {
    'FlatButton': 'https://codesinsider.com/flutter-flatbutton-widget-tutorial/',
    'RaisedButton': 'https://codesinsider.com/flutter-using-raisedbutton-widget-example-tutorial/',
    'OutlinedButton': 'https://codesinsider.com/flutter-outlinedbutton-example/',
    'TextButton': 'https://codesinsider.com/flutter-textbutton-example/',
    'ElevatedButton': 'https://codesinsider.com/flutter-elevatedbutton-example/',
    'IconButton': 'https://codesinsider.com/flutter-iconbutton-example/',
    'DropdownButton': 'https://codesinsider.com/flutter-dropdown-button-example/',
    'PopupMenuButton': 'https://codesinsider.com/flutter-popup-menu-button/',
    'ButtonBar': 'https://codesinsider.com/flutter-buttonbar-example/',
    'FloatingActionButton': 'https://codesinsider.com/flutter-floatingactionbutton-example-tutorial/',
  };
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _info(String buttonName) {
    links.keys.toList().contains(buttonName) ? _launchURL(links[buttonName]!) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Customized Button', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.code, color: Colors.black), onPressed: (){Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/3.CustomizedButton.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fcupertino.dart%27%253B%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250Aimport%2520%27package%253Aurl_launcher%252Furl_launcher.dart%27%253B%250A%250Aclass%2520CustomizedButton%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520CustomizedButton%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27customized_button%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_CustomizedButtonState%2520createState%28%29%2520%253D%253E%2520_CustomizedButtonState%28%29%253B%250A%257D%250A%250Aclass%2520_CustomizedButtonState%2520extends%2520State%253CCustomizedButton%253E%2520%257B%250A%2520%2520int%253F%2520_value%2520%253D%25201%253B%250A%250A%2520%2520Map%253CString%252C%2520String%253E%2520links%2520%253D%2520%257B%250A%2520%2520%2520%2520%27FlatButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-flatbutton-widget-tutorial%252F%27%252C%250A%2520%2520%2520%2520%27RaisedButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-using-raisedbutton-widget-example-tutorial%252F%27%252C%250A%2520%2520%2520%2520%27OutlinedButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-outlinedbutton-example%252F%27%252C%250A%2520%2520%2520%2520%27TextButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-textbutton-example%252F%27%252C%250A%2520%2520%2520%2520%27ElevatedButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-elevatedbutton-example%252F%27%252C%250A%2520%2520%2520%2520%27IconButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-iconbutton-example%252F%27%252C%250A%2520%2520%2520%2520%27DropdownButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-dropdown-button-example%252F%27%252C%250A%2520%2520%2520%2520%27PopupMenuButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-popup-menu-button%252F%27%252C%250A%2520%2520%2520%2520%27ButtonBar%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-buttonbar-example%252F%27%252C%250A%2520%2520%2520%2520%27FloatingActionButton%27%253A%2520%27https%253A%252F%252Fcodesinsider.com%252Fflutter-floatingactionbutton-example-tutorial%252F%27%252C%250A%2520%2520%257D%253B%250A%250A%2520%2520_launchURL%28String%2520url%29%2520async%2520%257B%250A%2520%2520%2520%2520if%2520%28await%2520canLaunch%28url%29%29%2520%257B%250A%2520%2520%2520%2520%2520%2520await%2520launch%28url%29%253B%250A%2520%2520%2520%2520%257D%2520else%2520%257B%250A%2520%2520%2520%2520%2520%2520throw%2520%27Could%2520not%2520launch%2520%2524url%27%253B%250A%2520%2520%2520%2520%257D%250A%2520%2520%257D%250A%250A%2520%2520void%2520_info%28String%2520buttonName%29%2520%257B%250A%2520%2520%2520%2520links.keys.toList%28%29.contains%28buttonName%29%2520%253F%2520_launchURL%28links%255BbuttonName%255D%21%29%2520%253A%2520null%253B%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Customized%2520Button%27%252C%2520%250A%2520')));},)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Flat Button
                FlatButton(
                  color: CupertinoColors.systemBlue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                  child: const Text('FlatButton'),
                  onPressed: () => _info('FlatButton'),
                ),
                /// Raised Button
                RaisedButton(
                  child: const Text('RaisedButton'),
                  onPressed: () => _info('RaisedButton'),
                ),
                /// Outline Button
                OutlineButton(
                    disabledTextColor: CupertinoColors.systemGreen,
                    disabledBorderColor: CupertinoColors.systemRed,
                    color: CupertinoColors.systemBlue,
                    child: const Text('OutlineButton'),
                  onPressed: () => _info('OutlineButton'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Outline Button
                OutlinedButton(
                    child: const Text('OutlinedButton'),
                    onPressed: () => _info('OutlinedButton')
                ),
                /// Text Button
                TextButton(
                    child: const Text('TextButton'),
                  onPressed: () => _info('TextButton'),
                ),
                /// Elevated Button
                ElevatedButton(
                  child: const Text('ElevatedButton'),
                  onPressed: () => _info('ElevatedButton'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Icon Button
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () => _info('IconButton'),
                ),
                /// Drop Down Button
                DropdownButton(
                  value: _value,
                  hint: const Text('Dropdown Button'),
                  items:  [
                    DropdownMenuItem(
                      value: 1,
                      child: const Text('More Info'),
                      onTap: () => _info('DropdownButton'),
                    ),
                    const DropdownMenuItem(
                      child: Text("Second Item"),
                      value: 2,
                    )
                  ],
                  onChanged: (int? value) {setState(() {_value = value;});},
                ),
                /// Popup Menu Button
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: const Text('More Info'),
                      onTap: () => _info('PopupMenuButton'),
                      ),
                    const PopupMenuItem(
                        child: Text('Others'),
                        value: 2,
                      )
                  ],
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                RaisedButton(
                  child: const Text("Yes"),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: () => _info('ButtonBar'),
                ),
                RaisedButton(
                  child: const Text("No"),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: (){},
                ),
              ],
            ),
          ]
        ),
      ),
      /// Floating Action Button
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        onPressed: () => _info('FloatingActionButton')
      ),
    );
  }
}
