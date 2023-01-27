import'package:flutter/material.dart';
void main(){
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Text('Shirinboyev')),
        body: Container(child: Column(
          children: [
            TextField(
              readOnly: true,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            OutlinedButton(
              onPressed: (){
                controller.text += '1';
              }, child:Text('1')
               ),OutlinedButton(
              onPressed: (){
                controller.text += '2';
              }, child:Text('2')
               )
          ],
        )),
        ),
    );
  }
}