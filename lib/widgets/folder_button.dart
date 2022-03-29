import 'package:flutter/material.dart';
import 'package:summarizer/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FolderButton extends StatelessWidget {
  final String text;
  IconData? btn_icon = Icons.folder_outlined;
  FolderButton(@required this.text, [this.btn_icon]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 40,
          width: 161,
          child: OutlinedButton.icon(
            onPressed: () {
              print("Pressed !");
            },
            icon: Icon(
              btn_icon ?? Icons.folder_outlined,
              size: 18.0,
            ),
            label: Text(
              text,
              style:
                  GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              side: const BorderSide(color: AppColors.primBlue, width: 0.5),
              primary: AppColors.primBlue,
            ),
          ),
        ),
      ),
    );
  }
}
