// Giang & Phuong se code o day nhe
import 'dart:html';

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
                    hintText: 'Enter folder title',
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
                        initiallyExpanded: false,
                        leading: const Icon(Icons.folder),
                        trailing: PopupMenuButton(
                          icon: const Icon(Icons.more_horiz),
                          onSelected: (result) {
                            if (result == 1) {
                            showDialog(
                              context: context, 
                              builder: (BuildContext context) {
                                return Container(
                                  width: 50,
                                  height: 50,
                                  //color: Colors.white,
                                  decoration: const BoxDecoration(color: Colors.white),
                                  child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (BuildContext context, int index) {
                                      Card(child: ListTile(
                                        title: Text("Move to folder",style: TextStyle(fontWeight: FontWeight.bold)),
                                        trailing: Icon(Icons.more_horiz),
                                        )    
                                      );
                                       Card(child: ListTile(
                                        title: Text("Choose a destination"),
                                        trailing: Icon(Icons.arrow_drop_up_outlined),
                                        )    
                                      );
                                      ListTile(
                                        title: Text("Research project $index"),
                                      );
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Cancel"),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              textStyle: TextStyle(
                                                fontSize: 10
                                              )
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Move here"),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.lightBlue[900],
                                              textStyle: TextStyle(
                                                fontSize: 10
                                              )
                                            ),
                                          )
                                        ],
                                      );
                                    }
                                  ),
                                );
                              });
                            }
                          },
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
                        title: Text('Folder $index'),
                        //onTap: () => {Navigator.of(context).pop()});
                        children: [
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  onTap: () {},
                                  leading: const Icon(Icons.folder),
                                  title: Text('Folder $index'),
                                  contentPadding: const EdgeInsets.only(left: 50),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.more_horiz),
                                    onPressed: () {}
                                  )
                                );
                              },
                          )
                        ]
                    );
                  },
            ),
            ),
          ],
      )
    );
  }
  );
}
}

