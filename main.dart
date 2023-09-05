import 'dart:math';

import 'package:flutter/material.dart';

// ```dart
// import 'dart:math';

// import 'lib/images';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number1 = 1;

  int number2 = 2;

  int number3 = 3;
  void PlayButton (){
    number1 = Random().nextInt(3) + 1;
                    number2 = Random().nextInt(3) + 1;
                    number3 = Random().nextInt(3) + 1;
                    setState(() {
                      
                    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [ Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),child: Image.asset("images/i_$number1.png", width: 120, height: 120,),
                  
                    ),
                  Text("player1")
                  
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), child: 
                  Image.asset("images/i_$number2.png", width: 120, height: 120,),
                    ),
                    Text("player2")
               
                  ],
                )

                  

                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  )
                ),
                onPressed: (){
                  PlayButton();
                },
                 child: Text("Play")
                 )
            ],
          ),
        ),
      ),
    );
  }
}
