import 'package:flutter/material.dart';

import '../helpers/text_heading.dart';
import 'folder_dropdown_items.dart';

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
                    trailing: const FolderDropdownItems(),
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
