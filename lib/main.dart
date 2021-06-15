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
          title: Text("Profil"), // el text ely bch ykoun fi el app bar
          centerTitle: true,// bch nhotoh fi el wast
          backgroundColor: Colors.indigo[800],//to change the default color of the navbar
        ),
        body:Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/majdi.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                color: Colors.white,
                height: 60,
              ),
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.grey[620],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1,
                ),

              ),
              SizedBox(height: 5,),
              Text(
                "Majdi Zlitni",
                style: TextStyle(
                  color:Colors.indigo[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "E-mail",
                style: TextStyle(
                  color: Colors.grey[620],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              Row(
                children:[
                  Icon(
                    Icons.email,
                  ),
                  Text(
                  "Zlt.Majdi@gmail.com",
                    style: TextStyle(
                      color:Colors.indigo[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                ),

                ],

              ),

            ],
          ),
        ),

      ),
    );
  }
}
class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

