import 'package:flutter/material.dart';

class Task3Result extends StatefulWidget {
  const Task3Result({Key? key}) : super(key: key);
  static const String id = 'task3_result';
  @override
  _Task3ResultState createState() => _Task3ResultState();
}

class _Task3ResultState extends State<Task3Result> {
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
                      Expanded(child: Image(image: AssetImage('assets/images/img_9.png'))),
                      Expanded(child: Image(image: AssetImage('assets/images/img_10.png')))
                    ],
                  ),
                ),
              )
          ),
        )
    );
  }
}