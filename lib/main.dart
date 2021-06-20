import 'package:flutter/material.dart';
import 'quotefile.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
  //We created a list of Quotes

}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes=[
  Quote("Every kitten grows up to be a cat. They seem so harmless at first—small, quiet, lapping up their saucer of milk. But once their claws get long enough, they draw blood. Sometimes from the hand that feeds them", "Frank Under Wood"),
  Quote("you will never know your true potential until you break the unfair judgement you put on your self","JIM KWIK"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title:Center(
            child:Text(
                "CARDS"
            ),
          )
        ),
        body:Column(
          children: quotes.map((quote)=>Text('${quote.text}-${quote.author}')).toList(),
        ) ,
      )
    );
  }
}
