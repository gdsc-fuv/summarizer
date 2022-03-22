// con Nguyen se code o file nay
import 'package:flutter/material.dart'; 

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: NavBar(),
      theme: ThemeData.light(),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
      title:  const Text("Summarizer"),
      )
    );
  }
}