import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Primera App"),
          ),
          body: Container(
              /* child: new RaisedButton(
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: Text(
                    "PRESIONAR",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {})
                 */
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: Text(
                        "Izquierda",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {}),
                  new RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: Text(
                        "Derecha",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: Text(
                        "Izquierda",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {}),
                  new RaisedButton(
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: Text(
                        "Derecha",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {})
                ],
              )
            ],
          ))),
    );
  }
}
