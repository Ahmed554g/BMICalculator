import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({Key? key, required this.result, required this.isMale, required this.age}) : super(key: key);
final double result;
final bool isMale;
final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon:const Icon(
          Icons.keyboard_arrow_left,
          ),
          onPressed: () {
            Navigator.pop(context);
        },
        ) ,
        title: const Text('BMI Result',),
      ),
      body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Gender : ${isMale ? 'Male':'Female' }',
          style:   const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,

          ),

          ),
           Text('Result :$result',
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          ),
           Text('Age :$age',
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,

          ),

          ),


        ],

      
        ),
      ),
    );
  }
}
