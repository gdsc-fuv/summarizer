import 'dart:io';

class DirectoryController {
  bool _hasPdf = false;
  late List _pdfList;
  Map _pdfMap = {};
  late String _root;

  DirectoryController(String root) {
    _root = root;
    _pdfList = [];
  }

  // Getter
  List getPdfList() {
    return _pdfList;
  }

  String getRoot() {
    return _root;
  }

  bool hasPdf() {
    return _hasPdf;
  }

  // Setter
  void setRoot(root) {
    _root = root;
  }

  // Begin looking for all pdf directories
  Future<bool> findPdf() async {
    // print("Finding pdfs");
    var tempPdfList = await createPDFDir(_root);
    for (String pdf in tempPdfList) {
      _pdfList.add(pdf);
    }
    // print("Finished finding pdfs");
    return true;
  }

  Future<List> createPDFDir(String dir) async {
    var rootDir = Directory(dir);
    var allPdfDir = await _findPDF2(rootDir);
    // print('In createPDFDir: ' + allPdfDir.toString()); //debug
    return allPdfDir;
  }

  Future<List> _findPDF(rootDir) async {
    List dirList = [];

    await for (var entity
        in rootDir.list(recursive: true, followLinks: false)) {
      print(entity.path);
      // print(entity.toString());
      if (entity.path.contains('.txt')) {
        // print(entity.path); //debug
        _hasPdf = true;
        dirList.add(entity.path);
      }
    }

    return Future(() => dirList);
  }

  Future<List> _findPDF2(rootDir) async {
    List findingLst = [];
    List dirLst = [];

    await for (FileSystemEntity entity
    in rootDir.list(recursive: false, followLinks: false)) {
      if (entity is Directory) {
        findingLst.add(entity.path);
      } else if (entity is File) {
        if (entity.path.contains('.txt')) {
          _hasPdf = true;
          dirLst.add(entity.path);
        }
      }
    }

    // while (findingLst.isNotEmpty)
    print(findingLst);

    return Future(() => dirLst);
  }
}
