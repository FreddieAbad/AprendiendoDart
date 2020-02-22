import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellow, Colors.orange, Colors.red],
          stops: [0.3, 0.5, 0.8],
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft
          )
        ),
        child: Center(
          child: RaisedButton(
            child: Text("Aceptar"),
            onPressed: (){}
          )
        )
        ,
      ),
    );
  }
}
