import 'package:flutter/material.dart';
import 'package:summarizer/widgets/folder_dialog.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../helpers/text_heading.dart';

class FolderDropdownItems extends StatelessWidget {
  const FolderDropdownItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_horiz),
      onSelected: (result) {
        if (result == 1) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const FolderDialog(
                    folderDialogBody: MoveFolderDialogBody());
              });
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          child: ListTile(
              leading: moveToFolderLogo,
              title: const Text("Move to folder...")),
          value: 1,
        ),
        PopupMenuItem(
          child: ListTile(leading: renameLogo, title: const Text("Rename")),
          value: 2,
        ),
        PopupMenuItem(
          child: ListTile(
              leading: createSubfolderLogo,
              title: const Text("Create a sub-folder")),
          value: 3,
        ),
        PopupMenuItem(
          child: ListTile(leading: trashbinLogo, title: const Text("Delete")),
          value: 4,
        ),
      ],
    );
  }
}

class MoveFolderDialogBody extends StatelessWidget {
  const MoveFolderDialogBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: TitleLarge('Move to folder...'),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: const LabelLarge("Choose a destination")),
                      Container(
                        height: 150,
                        child: Scrollbar(
                          isAlwaysShown: true,
                          // thickness: 20,
                          child: ListView.builder(
                              itemCount: 10,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  child: ListTile(
                                    title:
                                        LabelLarge("Research project $index"),
                                    trailing: const Icon(Icons.more_horiz),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
