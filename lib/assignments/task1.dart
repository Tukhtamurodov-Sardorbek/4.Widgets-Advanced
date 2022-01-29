import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);
  static const String id = 'task1';

  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Task 1', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              children: [
                image('assets/images/img_4.png'),
                const SizedBox(height: 30),
                image('assets/images/img_4.png'),
                const SizedBox(height: 30),
                image('assets/images/img_4.png'),
              ],
            ),
          )
      ),
    );
  }

  Widget image(String media){
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(media),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.white),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
        child: Text('PDP Online', style: TextStyle(color: Colors.white, fontSize: 28),),
      ),
    );
  }
}
