// import 'dart:js_util';

import'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
              padding:  EdgeInsets.only(top: 100,left: 40,right: 40,bottom: 60),
              child: TextField(
                controller: controller,
                readOnly: true,
                decoration: InputDecoration(
                border: OutlineInputBorder()),
                 ),
            ),
              
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(
                onPressed: (){
                  controller.text+= 'x2';
                }, child:const Text('x2')),
                ElevatedButton(
                onPressed: (){
                  controller.text+= '%';
                }, child:const Text('%')),
                ElevatedButton(
                onPressed: (){
                  controller.text = controller.text.substring(0, controller.text.length -1);

                }, child:const Text('C')),
                ElevatedButton(
                onPressed: (){
                  //  controller.text+= '/';
                  controller.text = controller.text.substring(0, controller.text.length-controller.text.length);
                }, child: const Text('clear')),
             
               
            ],),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                onPressed: (){
                  controller.text+= '1';
                }, child:const Text('1')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '2';
                }, child:const Text('2')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '3';
                }, child:const Text('3')),
                  ElevatedButton(
                onPressed: (){ 
                 controller.text += '+';
                  }, child:const Text('+'))
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                onPressed: (){
                  controller.text+= '4';
                }, child:const Text('4')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '5';
                }, child:const Text('5')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '6';
                }, child:const Text('6')),
                  ElevatedButton(
                onPressed: (){ 
                 controller.text += '-';
                  }, child:const Text('-'))
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                onPressed: (){
                  controller.text+= '7';
                }, child:const Text('7')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '8';
                }, child:const Text('8')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '9';
                }, child:const Text('9')),
                  ElevatedButton(
                onPressed: (){ 
                 controller.text += '*';
                  }, child:const Text('*'),
                  
                  ),
            ],),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                onPressed: (){
                  controller.text+= ',';
                }, child:const Text(',')),
                 ElevatedButton(
                onPressed: (){
                  controller.text+= '0';
                }, child:const Text('0')),
                 ElevatedButton(
                onPressed: (){
                     String s = controller.text;
                  int ind  = s.indexOf('+');
                  if(ind != -1){
                    String a = s.substring(0,ind);
                    String b = s.substring(ind+1);
                    int ans = int.parse(a)+int.parse(b);
                    controller.text = ans.toString();
                  }
                  setState(() {
                       String s = controller.text;
                  int ind  = s.indexOf('-');
                  if(ind != -1){
                    String a = s.substring(0,ind);
                    String b = s.substring(ind+1);
                    int ans = int.parse(a)-int.parse(b);
                    controller.text = ans.toString();
                  }
                  },
                  ); setState(() {
                       String s = controller.text;
                  int ind  = s.indexOf('*');
                  if(ind != -1){
                    String a = s.substring(0,ind);
                    String b = s.substring(ind+1);
                    int ans = int.parse(a)*int.parse(b);
                    controller.text = ans.toString();
                  }
                  },
                  ); setState(() {
                       String s = controller.text;
                  int ind  = s.indexOf('/');
                  if(ind != -1){
                    String a = s.substring(0,ind);
                    String b = s.substring(ind+1);
                    int ans = int.parse(a)~/int.parse(b);
                    controller.text = ans.toString();
                  }
                  },
                  );
                }, 
                
                child:const Text('=')),
                  ElevatedButton(
                onPressed: (){ 
                 controller.text += '/';
                  }, child:const Text('/'),
                  
                  ),
            ],)
           
          ],
        )),
    );
  }
}
//  ElevatedButton(
//                 onPressed: (){ 
//                   String s = controller.text;
//                   int ind  = s.indexOf('+');
//                   if(ind != -1){
//                     String a = s.substring(0,ind);
//                     String b = s.substring(ind+1);
//                     int ans = int.parse(a)+int.parse(b);
//                     controller.text = ans.toString();
//                   }
//                   }, child:const Text('='))