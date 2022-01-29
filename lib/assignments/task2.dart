import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);
  static const String id = 'task2';

  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Task 2', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Instagram', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (input) => input!.contains('@') ? 'Incorrect email address' : null,
              ),
            ),
            const SizedBox(height: 15),
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (input) => input!.length < 5 ? 'Incorrect password' : null,
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: const Text('Log in', style: TextStyle(color: Colors.white, fontSize: 18),),
              onPressed: (){},
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text('Don\'t have an account?'),
                SizedBox(width: 15),
                Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
