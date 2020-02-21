import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/animacionWave.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Wave",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: AnimacionWave()
        );
  }
}
