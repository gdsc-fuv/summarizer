// Giang & Phuong se code o day nhe
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:summarizer/constants/colors.dart';
import 'package:summarizer/constants/images.dart';

import '../helpers/text_heading.dart';

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
            height: MediaQuery.of(context).size.height - searchContainerHeight,
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.builder(
              // physics: ClampingScrollPhysics(),
              controller: _firstController,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                    initiallyExpanded: false,
                    leading: const Icon(Icons.folder),
                    trailing: PopupMenuButton(
                      icon: const Icon(Icons.more_horiz),
                      onSelected: (result) {
                        if (result == 1) {
                          print("selected 1");
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Container(
                                    width: 500,
                                    height: 360,
                                    //color: Colors.white,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width,
                                          alignment: Alignment.centerRight,
                                          color: AppColors.penBlue,
                                          child: const Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Icon(Icons.cancel,
                                            color: Colors.white,),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Expanded(
                                                    child: TitleLarge('Move to folder...'),
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.symmetric(vertical: 15),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(4.0),
                                                        border: Border.all(
                                                          color: Colors.grey,
                                                          width: 0.5,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                        Container(
                                                          // height: 50,
                                                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                                            width: double.infinity,
                                                            decoration: const BoxDecoration(
                                                              border: Border(bottom: BorderSide( //                   <--- left side
                                                                color: Colors.grey,
                                                                width: 0.5,
                                                              ),
                                                              ),
                                                            ),
                                                            child: LabelLarge("Choose a destination")),
                                                        Container(
                                                          height: 150,
                                                          child: Scrollbar(
                                                            isAlwaysShown: true,
                                                            // thickness: 20,
                                                            child: ListView.builder(
                                                                itemCount: 10,
                                                                shrinkWrap: true,
                                                                itemBuilder:
                                                                    (BuildContext context, int index) {
                                                                  return Container(
                                                                    height: 50,
                                                                    decoration: const BoxDecoration(
                                                                      border: Border(bottom: BorderSide( //                   <--- left side
                                                                        color: Colors.grey,
                                                                        width: 0.5,
                                                                      ),
                                                                      ),
                                                                    ),
                                                                    child: ListTile(
                                                                      title: LabelLarge("Research project $index"),
                                                                      trailing: Icon(Icons.more_horiz),
                                                                    ),
                                                                  );
                                                                }),
                                                          ),
                                                        ),
                                                      ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      children: <Widget>[
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: const Text("Cancel",
                                                          style: TextStyle(color: AppColors.primBlue),),
                                                          style: ElevatedButton.styleFrom(
                                                            primary:
                                                            Colors.white,
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: LabelMedium("Move here"),
                                                          style: ElevatedButton.styleFrom(
                                                              primary:
                                                              AppColors.primBlue,
                                                        ),)
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
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
                              title: Text('SubFolder $index'),
                              contentPadding: const EdgeInsets.only(left: 50),
                              trailing: IconButton(
                                  icon: const Icon(Icons.more_horiz),
                                  onPressed: () {}));
                        },
                      )
                    ]);
              },
            ),
          ),
        ],
      ));
    });
  }
}
