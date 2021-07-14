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
  Quote("Every kitten grows up to be a cat. They seem so harmless at first—small, quiet, lapping up their saucer of milk. But once their claws get long enough, they draw blood. Sometimes from the hand that feeds them.", "Frank Under Wood"),
  Quote("You will never know your true potential until you break the unfair judgement you put on your self.","JIM KWIK"),
  ];
  Widget quotetemp(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
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
          children: quotes.map((quote)=>quotetemp(quote)).toList(),
        ) ,
      )
    );
  }
}
