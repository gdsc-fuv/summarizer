import 'package:flutter/material.dart';
// declare package

class HomeScreen extends StatelessWidget {
  final int fileNumber;
  const HomeScreen(this.fileNumber);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(primary: false, slivers: <Widget>[
      SliverPadding(
        padding: const EdgeInsets.all(10),
        sliver: SliverGrid.count(
          crossAxisCount: fileNumber,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text('File 1'),
              color: Colors.pink[200],
            )
          ],
        ),
      )
    ]);
  }
}
