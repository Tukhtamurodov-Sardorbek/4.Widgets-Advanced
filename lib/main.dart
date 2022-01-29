import 'package:flutter/material.dart';
import 'package:widgets_intermediate/assignments/task1.dart';
import 'package:widgets_intermediate/assignments/task1_result.dart';
import 'package:widgets_intermediate/assignments/task2.dart';
import 'package:widgets_intermediate/assignments/task2_result.dart';
import 'package:widgets_intermediate/assignments/task3.dart';
import 'package:widgets_intermediate/assignments/task3_result.dart';
import 'package:widgets_intermediate/concepts/10.1.NavigationRail.dart';
import 'package:widgets_intermediate/concepts/5.2.TextField.dart';
import 'package:widgets_intermediate/concepts/5.TextField.dart';
import 'package:widgets_intermediate/concepts/6.1TextFormField.dart';
import 'package:widgets_intermediate/concepts/7.1SpeedDial.dart';
import 'package:widgets_intermediate/concepts/9.1.SliverAppBar.dart';
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
import 'package:widgets_intermediate/home_page.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

import 'concepts/9.SliverAppBar.dart';


void main() => runApp(const WidgetsAdvanced());

class WidgetsAdvanced extends StatelessWidget {
  const WidgetsAdvanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        ContainerDecoration.id: (context) => const ContainerDecoration(),
        ContainerGradient.id: (context) => const ContainerGradient(),
        CustomizedButton.id: (context) => const CustomizedButton(),
        GestureDetectorWidget.id: (context) => const GestureDetectorWidget(),
        Gesture.id: (context) => const Gesture(),
        TextFieldWidget.id: (context) => const TextFieldWidget(),
        TextField2.id: (context) => const TextField2(),
        TextField3.id: (context) => const TextField3(),
        CustomizedTextField.id: (context) => const CustomizedTextField(),
        FormField2.id: (context) => const FormField2(),
        SpeedDialWidget.id: (context) => const SpeedDialWidget(),
        SpeedDialWidget1.id: (context) => const SpeedDialWidget1(),
        FancyBottom.id: (context) => const FancyBottom(),
        SliverAppBarWidget.id: (context) => const SliverAppBarWidget(),
        SliverAppBarWidget2.id: (context) => const SliverAppBarWidget2(),
        NavigationRailWidget.id: (context) => const NavigationRailWidget(),
        NavigationRailWidget2.id: (context) => const NavigationRailWidget2(),

        Task1.id: (context) => const Task1(),
        Task2.id: (context) => const Task2(),
        Task3.id: (context) => const Task3(),
        Task1Result.id: (context) => const Task1Result(),
        Task2Result.id: (context) => const Task2Result(),
        Task3Result.id: (context) => const Task3Result(),
      },
    );
  }
}
