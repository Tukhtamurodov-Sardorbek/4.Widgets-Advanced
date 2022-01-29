import 'package:flutter/material.dart';

class Task2Result extends StatefulWidget {
  const Task2Result({Key? key}) : super(key: key);
  static const String id = 'task2_result';
  @override
  _Task2ResultState createState() => _Task2ResultState();
}

class _Task2ResultState extends State<Task2Result> {
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
                      Expanded(child: Image(image: AssetImage('assets/images/img_7.png'))),
                      Expanded(child: Image(image: AssetImage('assets/images/img_8.png')))
                    ],
                  ),
                ),
              )
          ),
        )
    );
  }
}