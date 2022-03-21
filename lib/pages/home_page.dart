import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
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
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text("School",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 32, 32),
                              )),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text("GDSC stuffs",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 32, 32),
                              )),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text("Research",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 32, 32),
                              )),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text("Neko",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 32, 32),
                              )),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text("Content that's up for adoption",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 32, 32),
                              )),
                        ),
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
                    children: [
                      Container(
                        // padding: const EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 229, 229, 229),
                        child: const Text("Content my mom warned me about",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color.fromARGB(255, 32, 32, 32),
                            )),
                      ),
                      Container(
                        // padding: const EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 229, 229, 229),
                        child: const Text("Inherited disaster",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color.fromARGB(255, 32, 32, 32),
                            )),
                      ),
                      Container(
                        // padding: const EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 229, 229, 229),
                        child: const Text("Y Combinator",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color.fromARGB(255, 32, 32, 32),
                            )),
                      ),
                      Container(
                        // padding: const EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 229, 229, 229),
                        child: const Text("Alex D Bloo",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color.fromARGB(255, 32, 32, 32),
                            )),
                      ),
                      Container(
                        // padding: const EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 229, 229, 229),
                        child: const Text("File too fat",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color.fromARGB(255, 32, 32, 32),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
