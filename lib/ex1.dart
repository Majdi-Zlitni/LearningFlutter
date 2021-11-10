import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex1 extends StatelessWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  bool ischecked = false;
  bool ischecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Demo"),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(child: Text('Sute TP2')),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Center(
            child: Container(
                margin: const EdgeInsets.all(20),
                child: const Text('Training Price',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.lime)))),
        CheckboxListTile(
            title: const Text("Dev End"),
            value: ischecked,
            onChanged: (bool? value) {
              setState(() {
                ischecked = value!;
              });
            }),
        CheckboxListTile(
            title: const Text("Back End"),
            value: ischecked2,
            onChanged: (bool? value) {
              setState(() {
                ischecked2 = value!;
              });
            }),
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                var a = const SnackBar(
                  content: Text("0 DT"),
                );
                if (ischecked == true && ischecked2 == true) {
                  a = const SnackBar(
                    content: Text("500 DT"),
                  );
                } else {
                  if (ischecked == true) {
                    a = const SnackBar(
                      content: Text("200 DT"),
                    );
                  } else if (ischecked2 == true) {
                    a = const SnackBar(
                      content: Text("300 DT"),
                    );
                  }
                }
                ScaffoldMessenger.of(context).showSnackBar(a);
              });
            },
            child: const Text('Get Price'),
          ),
        )
      ]),
    );
  }
}
