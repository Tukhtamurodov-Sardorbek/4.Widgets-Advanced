import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);
  static const String id = 'task3';

  @override
  _Task3State createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Task 3', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
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
                  labelText: 'Name',
                ),
              ),
            ),
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
              child: const Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 18),),
              onPressed: (){},
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text('Already have an account'),
                SizedBox(width: 15),
                Text('Log in', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
