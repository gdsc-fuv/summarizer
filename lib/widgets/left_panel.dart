// Giang & Phuong se code o day nhe
import 'package:flutter/material.dart';

// class LeftPanel extends StatelessWidget {
//   const LeftPanel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavDrawer> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                // width: 300,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter folder title',
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: ClampingScrollPhysics(),
                controller: _firstController,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.folder),
                      title: Text('Folder $index'),
                      onTap: () => {Navigator.of(context).pop()});
                }),
          ],
        ),
      );
    });
  }
}
// class NavDrawer extends StatelessWidget {
//   const NavDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView.builder(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter folder title',
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Folder ${index + 1}'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Folder ${index + 1}'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Folder ${index + 1}'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Folder ${index + 1}'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//           ListTile(
//             leading: Icon(Icons.folder),
//             title: Text('Folder ${index + 1}'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NavDrawer extends StatefulWidget {
//   const NavDrawer({Key? key}) : super(key: key);

//   @override
//   State<NavDrawer> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<NavDrawer> {
//   final ScrollController _firstController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//       return Scrollbar(
//         isAlwaysShown: true,
//         controller: _firstController,
//         child: Drawer(
//           child: ListView.builder(
//             controller: _firstController,
//             itemCount: 30,
//             itemBuilder: (BuildContext context, int index) {
//               return Column(
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         hintText: 'Enter folder title',
//                       ),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.folder),
//                     title: Text('Folder 1'),
//                     onTap: () => {Navigator.of(context).pop()},
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       );
//     });
//   }
// }
