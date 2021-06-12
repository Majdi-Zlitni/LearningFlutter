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
          child: Icon(
            Icons.favorite,
            color :Colors.pink[400],
            size: 50,
          )
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

thama zouz anwa3 ely nejbdouh mel net w ely na9rouh localy
ely nejbdouh mel net nettaamlou
child: Image.NetworkImage('URL'),
or el tari9a el twila
child: Image(image: NetworkImage('url')
          ),
waila nejbdouha localy heka
child: Image.asset('el blassa'),
w kif kif fiha tari9a twila
 */