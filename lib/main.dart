// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:untitled1/modules/bmi/bmi_screen.dart';
// ignore: unused_import
import 'package:untitled1/modules/bmi_result/bmi_result_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ' by Ahmed Saeed',
      home:BMI_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
