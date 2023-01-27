import 'package:calculator_2/calculator_offical.dart';
import 'package:calculator_2/main.dart';
import 'package:flutter/material.dart';
class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('First')),
        body: Container(child: Column(
          children: [ElevatedButton(onPressed: (){
          Navigator.of(context).pop(MaterialPageRoute(builder: ((context)=>MyApp())));}
                    , child: Text('back'))],
        )),
        ),);
  }
}
void main(){
  runApp(First());
}