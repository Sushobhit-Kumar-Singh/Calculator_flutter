
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 =TextEditingController();
  TextEditingController controller2 =TextEditingController();
  TextEditingController controller3 =TextEditingController();
  TextEditingController controller4 =TextEditingController();

  double? result1=0,result2=0,real1=0,real2=0,img1=0,img2=0,distance=0;


  add(){
    setState(() {
      real1 =double.parse(controller1.text);
      img1 =double.parse(controller2.text);
      real2 =double.parse(controller3.text);
      img2 =double.parse(controller4.text);
      result1 =(real1! + real2!);
      result2=(img1! + img2!);
    });
  }
  sub(){
    setState(() {
      real1 =double.parse(controller1.text);
      img1 =double.parse(controller2.text);
      real2 =double.parse(controller3.text);
      img2 =double.parse(controller4.text);
      result1 =(real1! - real2!);
      result2=(img1! - img2!);
    });
  }
  mul(){
    setState(() {
      real1 =double.parse(controller1.text);
      img1 =double.parse(controller2.text);
      real2 =double.parse(controller3.text);
      img2 =double.parse(controller4.text);
      result1=((real1!*real2!) -(img1! * img2!));
      result2=((real1! * img2!) +(real2! * img1!) );
    });
  }
  div(){
    setState(() {
      real1 =double.parse(controller1.text);
      img1 =double.parse(controller2.text);
      real2 =double.parse(controller3.text);
      img2 =double.parse(controller4.text);
      result1 =((real1! * real2!) + (img1! * img2!)) / ((real2! * real2!) + (img2! * img2!));
      result2=((img1! * real2!) - (real1! * img2!)) / ((real2! * real2!) + (img2! * img2!));
    });
  }
  dist(){
    setState(() {
      real1 =double.parse(controller1.text);
      img1 =double.parse(controller2.text);
      real2 =double.parse(controller3.text);
      img2 =double.parse(controller4.text);
      result1 =sqrt(((real1! - real2!) * (real1! - real2!)) + ((img1! - img2!) * (img1! - img2!)));
      result2=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                                                                                                                         COMPLEX OPERATION CALCULATOR"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Text(
              "ANSWER ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Real Part             =  $result1 ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              "Imaginary Part   =  $result2 ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
        Text(
            "First Complex Number",
   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
 )      ,
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                labelText: "ENTER REAL PART",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20))),
            ),
        SizedBox(
        height: 10,
      ),
      TextField(
        controller: controller2,
        decoration: InputDecoration(
            labelText: "ENTER IMAGINARY PART",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Second Complex Number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )      ,
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller3,
              decoration: InputDecoration(
                  labelText: "ENTER REAL PART",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller4,
              decoration: InputDecoration(
                  labelText: "ENTER IMAGINARY PART",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  add();

                }, child: Text(" Addition  ")),
                ElevatedButton(onPressed: (){
                  sub();

                }, child: Text("Subtraction")),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  mul();

                }, child: Text("Multiplication")),
                ElevatedButton(onPressed: (){
                  div();


                }, child: Text("   Division ")),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  dist();

                }, child: Text("Distance Between Numbers on Complex Plane")),


              ],
            ),


          ],
        ),
      ),
    );
  }
}
