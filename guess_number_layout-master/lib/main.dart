import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.green.withOpacity(0.5),
                    offset: const Offset(2.0, 5.0),
                    blurRadius: 5.0,
                    spreadRadius: 5.0)
              ]),
          //alignment: Alignment.center,
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/guess_logo.png', width: 100.0,height: 100.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GUESS', style: TextStyle(fontSize: 40.0, color : Colors.lightGreen),),
                    Text('THE NUMBER', style: TextStyle(fontSize: 20.0, color : Colors.green),),
                  ],)
                  ],
                ),
                SizedBox(height: 30.0,),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                    //width: 150.0,
                    child: TextField()
                ),

                SizedBox(
                  width: 90.0,
                  height: 30.0,
                  child: ElevatedButton(
                    child: Text('GUESS'),
                    onPressed: () {
                      //โค้ดที่จะให้ทำงานเมื่อกดปุ่ม
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
