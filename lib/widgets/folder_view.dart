import 'package:flutter/material.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: const Color.fromARGB(255, 229, 229, 229),
      child: Text(header,
          style: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 20,
            color: Color.fromARGB(255, 32, 32, 32),
          )),
    );
  }
}
