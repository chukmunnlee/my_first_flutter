import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold( appBar: AppBar( title: const Text('My App'),),
        //body: const Text('hello, world', textScaleFactor: 3,),
        body: createQuestions('别问我是谁', 4),
    ));
  }

  Column createQuestions(String text, int ans) {
    return Column(
      children: [
        Text(text, textScaleFactor: 2,),
        for (var i = 0; i < ans; i++)
          ElevatedButton(
            child: Text('Answer $i', textScaleFactor: 1.5,),
            onPressed: () => print('Pressed $i'),
          )
      ],
    );
  }
}
