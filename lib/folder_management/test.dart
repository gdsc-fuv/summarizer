
import 'dart:async';

import 'package:summarizer/folder_management/directory_controller.dart';

class TestDirectory {
  TestDirectory();

  static void main() async {
    String dir =
        r'C:\Users\ACER\Desktop\test';

    DirectoryController folderManager = DirectoryController(dir);

    // await folderManager.findPdf();

    // const fiveSec = Duration(seconds: 5);

    // Timer.periodic(fiveSec, (timer) async {
    //   print("5 seconds elapsed");
    //   await folderManager.findPdf();
    //   print(folderManager.getPdfList());
    // });

    await folderManager.findPdf(); // begin finding pdfs

    List pdfList = folderManager.getPdfList();

    print(pdfList);
  }
}

