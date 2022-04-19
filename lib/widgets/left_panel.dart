// Giang & Phuong se code o day nhe
// import 'package:flutter/material.dart';

// class NavDrawer extends StatefulWidget {
//   const NavDrawer({Key? key}) : super(key: key);

//   @override
//   State<NavDrawer> createState() => _NavDrawerState();
// }

// class _NavDrawerState extends State<NavDrawer> {
//   final ScrollController _firstController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     const double searchContainerHeight = 110;

//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//       return Drawer(
//         child: ListView(
//           children: [
//             const SizedBox(
//               height: searchContainerHeight,
//               child: DrawerHeader(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 margin: EdgeInsets.symmetric(vertical: 20),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.add_circle_outline),
//                     hintText: 'Enter folder title   ',
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height:
//                   MediaQuery.of(context).size.height - searchContainerHeight,
//               padding: const EdgeInsets.only(bottom: 10),
//               child: ListView.builder(
//                   // physics: ClampingScrollPhysics(),
//                   controller: _firstController,
//                   itemCount: 20,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ExpansionTile(
//                       initiallyExpanded: false,
//                       leading: const Icon(Icons.folder),
//                       title: Text('Folder $index'),
//                       trailing: IconButton(
//                           icon: const Icon(Icons.more_horiz), onPressed: () {}),
//                       children: [
//                         ListTile(
//                             onTap: () {},
//                             leading: const Icon(Icons.folder),
//                             title: Text('Folder $index'),
//                             contentPadding: const EdgeInsets.only(left: 50),
//                             trailing: IconButton(
//                                 icon: const Icon(Icons.more_horiz),
//                                 onPressed: () {})),
//                       ],
//                     );
//                   }),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:summarizer/constants/images.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const double searchContainerHeight = 110;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: searchContainerHeight,
              child: DrawerHeader(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.add_circle_outline),
                    hintText: 'Enter folder title   ',
                  ),
                ),
              ),
            ),
            Container(
              height:
                  MediaQuery.of(context).size.height - searchContainerHeight,
              padding: const EdgeInsets.only(bottom: 10),
              child: ListView.builder(
                  // physics: ClampingScrollPhysics(),
                  controller: _firstController,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
<<<<<<< HEAD
                        initiallyExpanded: false,
                        leading: const Icon(Icons.folder),
                        trailing: const Icon(Icons.more_horiz),
                        title: Text('Folder $index'),
                        //onTap: () => {Navigator.of(context).pop()});
                        children: [
                           ListView.builder(
                             scrollDirection: Axis.vertical,
                             shrinkWrap: true,
                             itemCount: 8,
                             itemBuilder: (BuildContext context, int index) {
                               return ListTile(
                                 leading: const Icon(Icons.folder),
                                 contentPadding: const EdgeInsets.only(left: 50),
                                 title: Text('Folder $index'),
                                 onTap: () => {Navigator.of(context).pop()});
                             }
                           )
                            // ListTile(
                            //   leading: const Icon(Icons.folder),
                            //   title: Text('Folder $index'),
                            //   contentPadding: const EdgeInsets.only(left: 50),
                            //   onTap: () => {Navigator.of(context).pop()})
                        ],
                        );
=======
                      initiallyExpanded: false,
                      leading: const Icon(Icons.folder),
                      title: Text('Folder $index'),
                      trailing: PopupMenuButton(
                        icon: const Icon(Icons.more_horiz),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: ListTile(
                                //leading: Icon(logoutLogo),
                                leading: moveToFolderLogo,
                                title: const Text("Move to folder...")),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: ListTile(
                                //leading: Icon(logoutLogo),
                                leading: renameLogo,
                                title: const Text("Rename")),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: ListTile(
                                //leading: Icon(logoutLogo),
                                leading: createSubfolderLogo,
                                title: const Text("Create a sub-folder")),
                            value: 3,
                          ),
                          PopupMenuItem(
                            child: ListTile(
                                //leading: Icon(logoutLogo),
                                leading: trashbinLogo,
                                title: const Text("Delete")),
                            value: 4,
                          ),
                        ],
                      ),
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.folder),
                          title: Text('Folder $index'),
                          contentPadding: const EdgeInsets.only(left: 50),
                          trailing: PopupMenuButton(
                            icon: const Icon(Icons.more_horiz),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: ListTile(
                                    //leading: Icon(logoutLogo),
                                    leading: moveToFolderLogo,
                                    title: const Text("Move to folder...")),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: ListTile(
                                    //leading: Icon(logoutLogo),
                                    leading: renameLogo,
                                    title: const Text("Rename")),
                                value: 2,
                              ),
                              PopupMenuItem(
                                child: ListTile(
                                    //leading: Icon(logoutLogo),
                                    leading: createSubfolderLogo,
                                    title: const Text("Create a sub-folder")),
                                value: 3,
                              ),
                              PopupMenuItem(
                                child: ListTile(
                                    //leading: Icon(logoutLogo),
                                    leading: trashbinLogo,
                                    title: const Text("Delete")),
                                value: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
>>>>>>> a98626966857ff1382b5ad9f9c0657cd48a9a74a
                  }),
            ),
          ],
        ),
      );
    });
  }
}
