import 'package:flutter/material.dart';

class Task1Result extends StatefulWidget {
  const Task1Result({Key? key}) : super(key: key);
  static const String id = 'task1_result';
  @override
  _Task1ResultState createState() => _Task1ResultState();
}

class _Task1ResultState extends State<Task1Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SingleChildScrollView(
                  child: Row(
                    children: const [
                      Expanded(child: Image(image: AssetImage('assets/images/img_5.png'))),
                      Expanded(child: Image(image: AssetImage('assets/images/img_6.png'))),
                    ],
                  ),
                ),
              )
            ),
          )
    );
  }
}