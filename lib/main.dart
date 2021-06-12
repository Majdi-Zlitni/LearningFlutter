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
        body: Center(//body howa el widget el wastaniya w Centre maanetha bch nguedou ely fiwasset el body el kol in center
          child: Text(
            'hello again',
            style: TextStyle(//TextStyle is widget to styling text
                fontSize: 20.0,
                fontFamily:'IndieFlower',
                fontWeight: FontWeight.bold,
                color:Colors.grey[600]
            ) ,
          ),
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
