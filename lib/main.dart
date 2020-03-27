import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainer example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'AnimatedContainer Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _alignment = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 2),
        alignment: _alignment,
        child: Container(
          height: 50.0,
          child: Icon(Icons.airplanemode_active, size: 50.0, color: Colors.blueAccent,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,
          onPressed: (){
            setState(() {
              _alignment = Alignment.center;
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
    );
  }
}
