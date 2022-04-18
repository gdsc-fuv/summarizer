import 'package:flutter/material.dart';
import 'package:summarizer/widgets/folder_view.dart';
import 'package:summarizer/widgets/left_panel.dart';
import 'package:summarizer/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      // drawer: const NavDrawer(),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: const [
                Text(
                  "Welcome back!",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 40,
                    color: Color.fromARGB(255, 30, 36, 84),
                  ),
                )
              ]),
              Row(children: const [
                Text(
                  "Save your time with Summarizer!",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 17,
                    color: Color.fromARGB(255, 32, 32, 32),
                  ),
                ),
              ]),
              Column(
                children: [
                  Row(children: const [
                    Text(
                      "Folders",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        color: Color.fromARGB(255, 32, 32, 32),
                      ),
                    ),
                  ]),
                  SizedBox(
                      width: 810,
                      height: 200,
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 5,
                        crossAxisSpacing: 10,
                        children: const [
                          (5 > 2)
                              ? FolderView(header: "1 is bigger than 2")
                              : FolderView(header: "1 is smaller than 2"),
                          FolderView(header: "Hello 2"),
                          FolderView(header: "Hello 3"),
                          FolderView(header: "Hello"),
                          FolderView(header: "Hello"),
                        ],
                      )),
                  SizedBox(
                    width: 810,
                    height: 200,
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      padding: const EdgeInsets.all(10.0),
                      children: const [
                        FolderView(header: "Hello"),
                        FolderView(header: "Hello 2"),
                        FolderView(header: "Hello 3"),
                        SizedBox.shrink(),
                        SizedBox(height: 0),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
