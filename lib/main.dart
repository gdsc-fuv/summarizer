// test git
import 'package:flutter/material.dart';
import 'package:summarizer/pages/dashboard_page.dart';
import 'package:summarizer/widgets/folder_dropdown_items.dart';
// import 'package:text_summarizer/widgets/nav_bar.dart';
// import 'pages/dashboard_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: TestApp(),
      // home:  const DashBoard(),
      initialRoute: Dashboard.routeName,
      routes: {
        Dashboard.routeName: (context) => Dashboard(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}

// TEST ONLY
class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("test only"),
        ),
        body: Container(child: DeleteBox()));
  }
}
