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
        backgroundColor: Colors.black,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Padding(
              padding:  EdgeInsets.only(top: 330,left: 10,right: 10,bottom: 10),
              child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 40),
                textAlign: TextAlign.end,
                cursorColor: Colors.white,
                controller: controller,
                // controller:_controller,
                readOnly: true,
                decoration: InputDecoration(
                border: OutlineInputBorder()),
                 ),
            ),
              
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SizedBox(height: 50,
                child: ElevatedButton(
                   style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                          ),
                  onPressed: (){
                    controller.text+= 'x2';
                  }, child:const Text('x2')),
              ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                     style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                          ),
                  onPressed: (){
                    controller.text+= '%';
                  }, child:const Text('%')),
                ),
                SizedBox(
                  height: 50,        
                  child: ElevatedButton(
                     style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                          ),
                  onPressed: (){
                    controller.text = controller.text.substring(0, controller.text.length -10);

                  }, child:const Text('C')),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                  onPressed: (){
                    controller.text = controller.text.substring(0, controller.text.length-controller.text.length);
                  }, child: const Text('clear')),
                ),
            ],),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '10';
                }, child:const Text('10')),
                  ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '2';
                }, child:const Text('2')),
                 ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '3';
                }, child:const Text('3')),
                 ),
                  SizedBox(
                    height: 50,
                       child: ElevatedButton(
                       style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                onPressed: (){ 
                 controller.text += '+';
                    }, child:const Text('+')),
                  )
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '4';
                }, child:const Text('4')),
                  ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '5';
                }, child:const Text('5')),
                 ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '6';
                }, child:const Text('6')),
                 ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                onPressed: (){ 
                 controller.text += '-';
                    }, child:const Text('-')),
                  )
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '7';
                }, child:const Text('7')),
                  ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '8';
                }, child:const Text('8')),
                 ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                            ),
                onPressed: (){
                    controller.text+= '9';
                }, child:const Text('9')),
                 ),
                  SizedBox(height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                onPressed: (){ 
                 controller.text += '*';
                    }, child:const Text('*'),
                    
                    ),
                  ),
            ],),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                       style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                onPressed: (){
                    controller.text+= ',';
                }, child:const Text(',')),
                  ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                        ),
                onPressed: (){
                    controller.text+= '0';
                }, child:const Text('0')),
                 ),
                 SizedBox(
                  height: 50,
                   child: ElevatedButton(
                  
                     style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: Colors.amber,
                      // side: BorderSide(width: 20,),
                       onSurface: Colors.amber
                        ),
                onPressed: (){
                  setState(() {   

                  });
                       String s = controller.text;
                    int ind  = s.indexOf('+');
                    if(ind != -10){
                      String a = s.substring(0,ind);
                      String b = s.substring(ind+10);
                      int ans = int.parse(a)+int.parse(b);
                      controller.text = ans.toString();
                    }
                    setState(() {
                         String s = controller.text;
                    int ind  = s.indexOf('-');
                    if(ind != -10){
                      String a = s.substring(0,ind);
                      String b = s.substring(ind+10);
                      int ans = int.parse(a)-int.parse(b);
                      controller.text = ans.toString();
                    }
                    },
                    ); setState(() {
                         String s = controller.text;
                    int ind  = s.indexOf('*');
                    if(ind != -10){
                      String a = s.substring(0,ind);
                      String b = s.substring(ind+10);
                      int ans = int.parse(a)*int.parse(b);
                      controller.text = ans.toString();
                    }
                    },
                    ); setState(() {
                        
                         String s = controller.text;
                    int ind  = s.indexOf('/');
                    if(ind != -10){
                      String a = s.substring(0,ind);
                      String b = s.substring(ind+10);
                      int ans = int.parse(a)~/int.parse(b);
                      controller.text = ans.toString();
                    }
                    },
                    );setState(() {
                        
                         String s = controller.text;
                    int ind  = s.indexOf('%');
                    if(ind != -10){
                      String a = s.substring(0,ind);
                      String b = s.substring(ind+10);
                      int ans = int.parse(a)%int.parse(b);
                      controller.text = ans.toString();
                    }
                    },
                    );
                },
                
                child:const Text('=')),
                 ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      )
                      ),
                    
                onPressed: (){ 
                 controller.text += '/';
                    }, child:const Text('/'),
                    ),
                  ),
            ],)
           
          ],
        )),
    );
  }
}
