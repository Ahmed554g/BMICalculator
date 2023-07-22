// ignore_for_file: camel_case_types, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_constructors, avoid_print
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled1/modules/bmi_result/bmi_result_screen.dart';
class BMI_Screen extends StatefulWidget {
  const BMI_Screen({Key? key}) : super(key: key);
  @override
  State<BMI_Screen> createState() => _BMI_ScreenState();
}
class _BMI_ScreenState extends State<BMI_Screen> {
bool isMale = true;
double height = 120.0;
int weight = 40;
int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'BMI Calculator'
    ),
    ),
      body: Column(
        children: [
           Expanded(
      child:Padding(padding:const EdgeInsets.all(20.0,),
            child:Row(
            children: [
             Expanded(
            child:GestureDetector(
              onTap: (){
           setState(() {
             isMale = true;
           });
              },
             child: Container(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                Image(
                  image:AssetImage('assets/cf8a11b44a748c4ce286fb020f920ada.png'),
                  width:90.0,
                  height: 90.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('MALE',
                  style: TextStyle(
               fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
                 decoration:BoxDecoration(
                   borderRadius:BorderRadius.circular(10.0,),
                   color: isMale ? Colors.blue : Colors.grey[400],
                 ),
      ),
            ),
    ),
             const SizedBox(width: 15.0,),
             Expanded(
    child:GestureDetector(
    onTap: (){
    setState(() {
      isMale = false;
    });
    },
               child: Container(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
             Image(
                 image:AssetImage('assets/images.png'),
             width:90.0,
               height: 90.0,
             ),
                SizedBox(
                  height: 15.0,
                ),
                Text('FEMALE',
                  style: TextStyle(
               fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
                 decoration:BoxDecoration(
                   borderRadius:BorderRadius.circular(10.0,),
                   color: isMale ? Colors.grey[400] : Colors.blue ,
                 ),

      ),
           ),
             ),
            ],
          ),
    ) ,
        ) ,
           Expanded(
             child:Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 20.0,
               ),


             child:Container(
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,

        children:[
          Text('HEIGHT',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
             mainAxisAlignment: MainAxisAlignment.center,
             textBaseline:TextBaseline.alphabetic,
            children:  [
              Text('${height.round()}',

                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width:5.0,
              ),
              Text ('CM',

                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Slider(value: height,
              max: 220.0,
              min:80.0 ,
              onChanged: (value)
              {
setState(() {
  height = value;
});

              })
        ],
        ),
               decoration:BoxDecoration(
                 borderRadius:BorderRadius.circular(10.0,),
                 color: Colors.grey[400],
               ),
           ),
             ),
           ),
           Expanded(
             child:Padding(
             padding:const EdgeInsets.all(20.0,),
             child: Row(

            children: [
              Expanded(
             child: Container(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AGE',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text ('$age',

                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          age--;
                        });
                      },
                        heroTag: 'age-',
                        mini: true,
                      child:Icon(Icons.remove,

                      ),
                      ),
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          age++;
                        });
                      },
                        heroTag: 'age+',
                        mini: true,
                      child:Icon(Icons.add,

                      ),
                      ),
                    ],
                  ),
                ],
              ),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),
              ),),
              SizedBox(
                width:20.0,
              ),
              Expanded(
             child: Container(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text ('$weight',

                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          weight--;
                        });
                      },
                        heroTag: 'weight-',
                        mini: true,
                      child:Icon(Icons.remove,

                      ),
                      ),
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          weight++;
                        });
                      },
                        heroTag: 'weight+',
                        mini: true,
                      child:Icon(Icons.add,

                      ),
                      ),
                    ],
                  ),
                ],
              ),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),
              ),),

            ],
          ), ),),
           Container(
            width: double.infinity,
           color:Colors.blue,
        child:  MaterialButton(
          onPressed: ()
          {
          double result = weight / pow(height / 100,2);

              print(result.round());

          Navigator.push(
            context, MaterialPageRoute(builder:(context)
          =>BMIResultScreen(
            age:age,
            isMale: isMale,
            result: result.roundToDouble(),
          ),),);
        },
          height: 50.0,
          child:const Text('CALCULATE',
          style: TextStyle(
          color: Colors.white,
          ),
          ),
          ),
                   ),
        ],
      ),
    );
  }
}