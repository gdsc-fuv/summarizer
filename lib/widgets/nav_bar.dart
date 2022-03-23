// con Nguyen se code o file nay
import 'package:flutter/material.dart';
import 'package:summarizer/constants/colors.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primBlue,
      foregroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text("Summarizer"),
      ),
    );
  }
}
