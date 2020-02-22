import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Botones',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top:100,bottom: 10, right: 10, left: 10 ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://flutter.dev/images/flutter-logo-sharing.png'),
                          alignment: Alignment.bottomCenter)
                          ),

              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.white,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 1",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.lightGreenAccent,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 2",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.limeAccent,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 3",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.black12,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 4",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.white,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 5",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  color: Colors.lightBlueAccent,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Center(
                                          child: Text(
                                        "Opcion 6",
                                        textAlign: TextAlign.center,
                                      )))))
                        ],
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
