import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitar Banner inicial
      debugShowCheckedModeBanner: false,
      title: 'Gradientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        //margen
        color: Colors.white,
        child: Container(
            margin: EdgeInsets.all(20),
            decoration: new BoxDecoration(
                //margin con bordes redondeados
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.orange, Colors.red],
                    stops: [0.3, 0.5, 0.8],
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft)),
            child: Center(
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20))),
                    child: Text("Aceptar"),
                    onPressed: () {}))),
      ),
    );
  }
}
