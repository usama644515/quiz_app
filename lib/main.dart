import 'package:flutter/material.dart';
import 'imple.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const MyApp(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => const QuizApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold ),),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 
                ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Start Quiz',style: TextStyle(fontSize: 25.0)),
          style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              fixedSize: const Size(300, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
