import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class FormField2 extends StatefulWidget {
  const FormField2({Key? key}) : super(key: key);
  static const String id = 'form_field2';

  @override
  _FormField2State createState() => _FormField2State();
}

class _FormField2State extends State<FormField2> {
  bool isHidden = false;

  final _formKey = GlobalKey<FormState>();
  String? _email, _password;
  _doSignIn(){
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: '+998 90 799-77-20');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){Navigator.pop(context);},
          ),
          title: const Text('Text Form', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.code, color: Colors.black),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/6.1TextFormField.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520FormField2%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520FormField2%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27form_field2%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_FormField2State%2520createState%28%29%2520%253D%253E%2520_FormField2State%28%29%253B%250A%257D%250A%250Aclass%2520_FormField2State%2520extends%2520State%253CFormField2%253E%2520%257B%250A%2520%2520bool%2520isHidden%2520%253D%2520false%253B%250A%250A%2520%2520final%2520_formKey%2520%253D%2520GlobalKey%253CFormState%253E%28%29%253B%250A%2520%2520String%253F%2520_email%252C%2520_password%253B%250A%2520%2520_doSignIn%28%29%257B%250A%2520%2520%2520%2520if%28_formKey.currentState%21.validate%28%29%29%2520%257B%250A%2520%2520%2520%2520%2520%2520_formKey.currentState%21.save%28%29%253B%250A%2520%2520%2520%2520%2520%2520print%28%27Welcome%27%29%253B%250A%2520%2520%2520%2520%257D%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520TextEditingController%2520_controller%2520%253D%2520TextEditingController%28text%253A%2520%27%252B998%252090%2520799-77-20%27%29%253B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Text%2520Form%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252030%252C%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520TEXT%2520FORM%2520FIELD%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Form%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Column%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Padding%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520padding%253A%2520const%2520EdgeInsets.symmetric%28horizontal%253A%252030%252C%2520vertical%253A%25200%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520TextFormField%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520decoration%253A%2520const%2520InputDecoration%28labelText%253A%2520%27Email%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520validator%253A%2520%28input%29%2520%253D%253E%2520input%21.contains%28%27%2540%27%29%253F%27Please%2520enter%2520a%2520valid%2520email%2520address%27%253Anull%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onSaved%253A%2520%28input%29%2520%253D%253E%2520_email%2520%253D%2520input%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520')));},
            )
          ],
        ),
      body:
      /// TEXT FORM FIELD
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (input) => input!.contains('@')?'Please enter a valid email address':null,
                    onSaved: (input) => _email = input,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (input) => input!.length<6 ? 'Must be at least 6 characters':null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),
                FlatButton(onPressed: _doSignIn, child: const Text('Sign in'), color: Colors.blue),
              ],
            ),
          )
    );
  }
}
