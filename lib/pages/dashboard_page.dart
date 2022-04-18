import 'package:flutter/material.dart';
import '../helpers/text_heading.dart';
import '../widgets/folder_button.dart';
import '../widgets/left_panel.dart';
import '../widgets/nav_bar.dart';
// import '../widgets/left_panel.dart';
// import '../widgets/nav_bar.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //appBar: NavBar(), // goi class cua Nguyen
        //body: LeftPanel() ,  // goi panel cua Phuong va Giang
        appBar: Navbar(),
        drawer: NavDrawer(),
        drawerEnableOpenDragGesture: true,
        body: DashboardLayout());
  }
}

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 2,
        child: Container(child: NavDrawer()),
      ),
      Expanded(
        flex: 7,
        child: Column(
          children: [
            Expanded(flex: 1, child: ButtonArea()),
            Expanded(flex: 3, child: FolderArea()),
            Expanded(flex: 6, child: RecentFileArea()),
          ],
        ),
      ),
    ]);
  }
}

class ButtonArea extends StatelessWidget {
  const ButtonArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // color: Colors.red,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FolderButton("Import a folder", Icons.drive_folder_upload_outlined),
        FolderButton("Upload a file", Icons.upload_file_outlined),
      ],
    );
  }
}

class FolderArea extends StatelessWidget {
  const FolderArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: TitleMedium("Folders"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FolderButton("Branding"),
            FolderButton("Business"),
            FolderButton("Computer"),
            FolderButton("Economics"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FolderButton("English"),
            FolderButton("Geopolitics"),
            FolderButton("Psychology"),
            FolderButton("Product Design"),
          ],
        )
      ],
    );
  }
}

class RecentFileArea extends StatelessWidget {
  const RecentFileArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: TitleMedium("Recent Files"),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  print("Clicked");
                },
                child: ListTile(
                  onTap: null,
                  leading: Icon(Icons.book),
                  title: Row(
                    children: [
                      Expanded(child: Text(data[index])),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

List data = ["Thien Phu", "Dang Hoang"];
