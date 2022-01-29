import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class TextField3 extends StatefulWidget {
  const TextField3({Key? key}) : super(key: key);
  static const String id = 'text_field3';

  @override
  _TextField3State createState() => _TextField3State();
}

class _TextField3State extends State<TextField3> {
  final TextEditingController _textController = TextEditingController(text: "Initial Text");
  TextEditingController textController = TextEditingController();
  String displayText = "";
  RegExp digitValidator  = RegExp("[0-9]+");
  bool isANumber = true;
  final _numberForm = GlobalKey<FormState>();
  final RegExp _digitRegex = RegExp("[0-9]+");
  bool isValidForm = false;

  void setValidator(valid){
    setState(() {
      isANumber = valid;
    });
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
        title: const Text('Text Field', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/5.2.TextField.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fcupertino.dart%27%253B%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Aflutter%252Fservices.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520TextField3%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520TextField3%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27text_field3%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_TextField3State%2520createState%28%29%2520%253D%253E%2520_TextField3State%28%29%253B%250A%257D%250A%250Aclass%2520_TextField3State%2520extends%2520State%253CTextField3%253E%2520%257B%250A%2520%2520%2520%2520%250A%2520%2520final%2520TextEditingController%2520_textController%2520%253D%2520TextEditingController%28text%253A%2520%2522Initial%2520Text%2522%29%253B%250A%2520%2520TextEditingController%2520textController%2520%253D%2520TextEditingController%28%29%253B%250A%2520%2520String%2520displayText%2520%253D%2520%2522%2522%253B%250A%2520%2520RegExp%2520digitValidator%2520%2520%253D%2520RegExp%28%2522%255B0-9%255D%252B%2522%29%253B%250A%2520%2520bool%2520isANumber%2520%253D%2520true%253B%250A%2520%2520final%2520_numberForm%2520%253D%2520GlobalKey%253CFormState%253E%28%29%253B%250A%2520%2520final%2520RegExp%2520_digitRegex%2520%253D%2520RegExp%28%2522%255B0-9%255D%252B%2522%29%253B%250A%2520%2520bool%2520isValidForm%2520%253D%2520false%253B%250A%250A%2520%2520void%2520setValidator%28valid%29%257B%250A%2520%2520%2520%2520setState%28%28%29%2520%257B%250A%2520%2520%2520%2520%2520%2520isANumber%2520%253D%2520valid%253B%250A%2520%2520%2520%2520%257D%29%253B%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Text%2520Field%27%252C%2520style%253A%2520TextStyle%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fontSize%253A%252030%252C%2520fontWeight%253A%2520FontWeight.bold%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28%2520builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F.png%27%252C%2520url%253A%2520%27%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520ListView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Padding%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520padding%253A%2520const%2520EdgeInsets.symmetric%28horizontal%253A%252010.0%252C%2520vertical%253A%252010.0%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520TextField%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520decoration%253A%2520InputDecoration%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520filled%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fillColor%253A%2520Colors.grey%255B200%255D%252C%250A%2520%2520%2520')));},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                contentPadding: const EdgeInsets.all(0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent),
                ),
              ),
            ),
          ),
          /*
          * Utilizing validation in your text field to restrict certain characters or digits is a must to reduce user errors.
          * Flutter’s inputFormatter property allows you to set an array of filters to the TextField widget. It will accept two types:
          * Allowing specific characters, which can be set using FilteringTextInputFormatter.allow()
          * Denying specific characters, which can be set using FilteringTextInputFormatter.deny()
          * The following is an example of what your code might look like if you’re denying certain characters:
          */
          TextField(
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp("[0-9]+"))],
            decoration: const InputDecoration(
                hintText: 'Restricting and allowing input values',
            ),
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          /*
          Validating input with error messages
          Applying an error message to TextField and TextFormField is slightly different because of the availability of certain properties. Let’s take a look at how you can validate input with error messages in each of these widgets.
          Input validation error messages in TextField
          There is no direct property to add an error message in TextField. But you can set an errorText property in InputDecoration based on the validated value.
          In the following example, I determine if the input value is empty and a number, and change the isANumber value to true or false based on the result. Based on the isANumber value you can set the error text, as I did here with “Please enter a number”:
           */
          TextField(
            onChanged: (inputValue){
              if(inputValue.isEmpty || digitValidator.hasMatch(inputValue)){
                setValidator(true);
              } else{
                setValidator(false);
              }
            },

            decoration: InputDecoration(
                hintText: 'Input validation error message',
                errorText: isANumber ? null : "Please enter a number"
            ),
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          /*
          Validating input with error messages
          Applying an error message to TextField and TextFormField is slightly different because of the availability of certain properties. Let’s take a look at how you can validate input with error messages in each of these widgets.
          Input validation error messages in TextField
          There is no direct property to add an error message in TextField. But you can set an errorText property in InputDecoration based on the validated value.
          In the following example, I determine if the input value is empty and a number, and change the isANumber value to true or false based on the result. Based on the isANumber value you can set the error text, as I did here with “Please enter a number”:
           */
          TextField(
            onChanged: (inputValue){
              if(inputValue.isEmpty || digitValidator.hasMatch(inputValue)){
                setValidator(true);
              } else{
                setValidator(false);
              }
            },

            decoration: InputDecoration(
                errorText: isANumber ? null : "Please enter a number",
                errorStyle: TextStyle(color: Colors.purpleAccent),
                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purpleAccent)),
                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purpleAccent))
            ),
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          /*
          Input validation error messages in TextFormField
          The main difference between TextFormField and TextField is that the TextFormField widget uses the Form widget, which can contain multiple TextField widgets.
          In Flutter, creating a validated Form with TextFormField is simple.
          First, create a Form widget and add two TextFormField widgets with a button (I used ElevatedButton) and Text.
          The important thing to remember when creating a Form widget is that you must first create a GlobalKey which is required to access the Form. After creating a GlobalKey, you can set that key to the key property of the Form widget.
          TextFormField contains a property called a validator. You can access field values in the validator callback function and validate differently based on the returned value. For the first text field, we will check whether it is empty, or whether the value is a digit using a regular expression. If that condition fails you can return an error message for that particular field.
          In the onPressed event, you can check the form validity using the GlobalKey object and change the isValidForm value to true or false to show a message in the below Text widget:
           */
          Form(
              key: _numberForm,
              child:
              Column(
                children: [
                  TextFormField(
                    validator: (inputValue){
                      if(inputValue!.isEmpty || !_digitRegex.hasMatch(inputValue)){
                        return "Please enter number";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    validator: (inputValue){
                      if(inputValue!.isEmpty){
                        return "Please Fill before";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: (){
                        if(_numberForm.currentState!.validate()){
                          setState(() {
                            isValidForm = true;
                          });
                        } else{
                          setState(() {
                            isValidForm = false;
                          });
                        }
                      }, child: const Text("Check Number")),
                  Text( isValidForm ? "Nice" : "Please Fix error and Submit ")
                ],
              )),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),


          TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
          const SizedBox(height: 10),
          TextField(
            cursorColor: Colors.black,
            style: TextStyle(
                color: Colors.white
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueAccent,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.blue),
                hintText: "Enter your name"
            ),
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          const TextField(
            maxLines: 5,
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          Column(
            children: [
              TextField(
                controller: textController,
                maxLines: null,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  displayText = textController.text;
                });
              }, child: const Text("Show Text")),
              Text(displayText,style: const TextStyle(fontSize: 20),)
            ],
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          TextField(
            controller: _textController,
          ),
          TextFormField(
            initialValue: "Initial Text",
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          const TextField(
            keyboardType: TextInputType.number,
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            obscuringCharacter: "*",
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),
          const TextField(
            maxLength: 2,
          ),
          const Divider(thickness: 3, color: CupertinoColors.systemTeal),
          const SizedBox(height: 10),

        ],
      ),
    );
  }
}
