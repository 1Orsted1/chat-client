import 'package:chat_client/screens/PrincipalGrupo.dart';
import 'package:flutter/material.dart';
import './screens/PantallaLoginTemp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "OpenSans",
          primaryColor: Color(0xFF454F5F),
          accentColor: Color(0xFFF89A6E)),
      home: PantallaLoginTemp(),
    );
  }
}
