import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../helpers/text_heading.dart';
import '../widgets/folder_button.dart';
import '../widgets/folder_dialog.dart';
import '../widgets/left_panel.dart';
import '../widgets/nav_bar.dart';

// import '../widgets/left_panel.dart';
// import '../widgets/nav_bar.dart';

class Dashboard extends StatelessWidget {
  static const routeName = "/dashboard";

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: Navbar(),
        // drawer: NavDrawer(),
        drawerEnableOpenDragGesture: true,
        body: DashboardLayout());
  }
}

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({Key? key}) : super(key: key);

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  bool _isOpen = true;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Row(children: [
      SlideTransition(
        position: _offsetAnimation,
        child: Expanded(
          flex: 2,
          child: Container(child: const NavDrawer()),
        ),
      ),
      Expanded(
        flex: 7,
        child: Column(
          children: [
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: AppColors.primBlue),
                      tooltip: 'Open navbar',
                      onPressed: () {
                        setState(() {
                          _isOpen = !_isOpen;
                        });
                        _isOpen ? _controller.forward() : _controller.reverse();
                      },
                    ),
                    const Text('Hello'),
                  ],
                )),
            const Expanded(flex: 1, child: ButtonArea()),
            const Expanded(flex: 3, child: FolderArea()),
            const Expanded(flex: 6, child: RecentFileArea()),
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
                  leading: const Icon(Icons.book),
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
