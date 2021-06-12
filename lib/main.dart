import 'package:flutter/material.dart';

void main() {
  runApp(Home());

}

class Home extends StatelessWidget {//to enable hot reload
   @override
  Widget build(BuildContext context) {
    return MaterialApp(//hadha el root widget
      home: Scaffold(//hadhaya ely ngued bih el config mtaa basic layout kima navbar w floating Action Button ely hiya button tethat el louta
        appBar: AppBar(//hadha ll AppBar
          title: Text("My second app"), // el text ely bch ykoun fi el app bar
          centerTitle: true,// bch nhotoh fi el wast
          backgroundColor: Colors.indigo[800],//to change the default color of the navbar
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("hello Majdi!"),
            RaisedButton.icon(onPressed:(){},
              icon: Icon(
                Icons.mail
              ),
              label: Text("Send"),
            ),
            Container(
              color: Colors.lightBlue,
              child: Text("Container"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },//proprities lazemha tkoun maa el FloatingActionButton bch kif nenzlou taamel haja
          child: Text('Click'),
          backgroundColor: Colors.indigo[600],
        ),
      ),
    );
  }
}
/*
nestaamlo row bch nhoto fih widget okhrin
nestaamlou mainAxisAlignment : MainAxisAlignment.spaceEvenly, bch ykhali space between the elements
crossAxisAlignment: CrossAxisAlignment.start, bch ykhali space in the y axe verticaly
 */