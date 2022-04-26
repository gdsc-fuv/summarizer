import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../helpers/text_heading.dart';

class FolderDialog extends StatelessWidget {
  const FolderDialog({Key? key, required this.folderDialogBody}) : super(key: key);

  final Widget folderDialogBody;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      child: Container(
        width: 500,
        height: 400,
        child: Column(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                  color: AppColors.secLightBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      topRight: Radius.circular(6.0))),
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              ),
            ),
            folderDialogBody,
            Container(
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: AppColors.primBlue),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const LabelMedium("Move here"),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primBlue,
                    ),
                  ),
                  const SizedBox(width: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
