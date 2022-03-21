// con Nguyen se code o file nay
import 'package:flutter/material.dart'; 

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Hello world")
    );
  }
}