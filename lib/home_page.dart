import 'package:flutter/material.dart';
import 'package:widgets_intermediate/assignments/task1.dart';
import 'package:widgets_intermediate/assignments/task1_result.dart';
import 'package:widgets_intermediate/assignments/task2.dart';
import 'package:widgets_intermediate/assignments/task2_result.dart';
import 'package:widgets_intermediate/concepts/10.1.NavigationRail.dart';
import 'package:widgets_intermediate/concepts/5.2.TextField.dart';
import 'package:widgets_intermediate/concepts/5.TextField.dart';
import 'package:widgets_intermediate/concepts/6.1TextFormField.dart';
import 'package:widgets_intermediate/concepts/7.1SpeedDial.dart';
import 'package:widgets_intermediate/concepts/9.1.SliverAppBar.dart';

import 'assignments/task3.dart';
import 'assignments/task3_result.dart';
import 'concepts/1.ContainerDecoration.dart';
import 'concepts/10.NavigationRail.dart';
import 'concepts/2.ContainerGradient.dart';
import 'concepts/3.CustomizedButton.dart';
import 'concepts/4.1.GestureDetector.dart';
import 'concepts/4.GestureDetector.dart';
import 'concepts/5.1 TextField.dart';
import 'concepts/6.CustomizedTextField.dart';
import 'concepts/7.SpeedDial.dart';
import 'concepts/8.FancyBottomNavigation.dart';
import 'concepts/9.SliverAppBar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String,String> concepts = {
    ContainerDecoration.id : 'CONTAINER DECORATION',
    ContainerGradient.id : 'CONTAINER GRADIENT',
    CustomizedButton.id : 'CUSTOMIZED BUTTON',
    GestureDetectorWidget.id : 'GESTURE DETECTOR',
    Gesture.id : 'GESTURE DETECTOR',
    TextFieldWidget.id : 'TEXT FIELD',
    TextField2.id : 'TEXT FIELD',
    TextField3.id : 'TEXT FIELD',
    CustomizedTextField.id : 'TEXT FORM',
    FormField2.id : 'TEXT FORM',
    SpeedDialWidget.id : 'SPEED DIAL',
    SpeedDialWidget1.id : 'SPEED DIAL',
    FancyBottom.id : 'FANCY BOTTOM',
    SliverAppBarWidget.id : 'SLIVER APP BAR',
    SliverAppBarWidget2.id : 'SLIVER APP BAR',
    NavigationRailWidget.id : 'NAVIGATION RAIL',
    NavigationRailWidget2.id : 'NAVIGATION RAIL',
  };
  Map<String,String> tasks = {
    Task1.id : 'First Task',
    Task1Result.id : 'First Task Result',
    Task2.id : 'Second Task',
    Task2Result.id : 'Second Task Result',
    Task3.id : 'Third Task',
    Task3Result.id : 'Third Task Result'
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text('Widgets Advanced'),
          centerTitle: true,
          bottom: const TabBar(
              indicatorColor: Colors.cyan,
              labelColor: Colors.cyan,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.menu_book, color: Colors.cyan), text: 'Concepts', height: 50),
                Tab(icon: Icon(Icons.task, color: Colors.cyan), text: 'Tasks', height: 50),
              ]
          ),
        ),
        body: TabBarView(
          children:  [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: concepts.length,
                itemBuilder: (context, index){
                  return _card(index+1, concepts.values.toList()[index], concepts.keys.toList()[index]);
                  },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index){
                  return _card(index+1, tasks.values.toList()[index], tasks.keys.toList()[index]);
                  },
              ),
            ),
          ]
        ),
      ),
    );
  }

  Widget _card(int number, String name, String id){
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: MaterialButton(
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 10,
          minLeadingWidth: 10,
          leading: Text(number.toString(), style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          title: Center(child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5), textAlign: TextAlign.center)),
          selectedColor: Colors.blueGrey,
        ),
        onPressed: (){Navigator.of(context).pushNamed(id);},
      ),
      elevation: 10.0,
    );
  }
}
