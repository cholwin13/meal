import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/dimens.dart';

extension Dialog on BuildContext {
  showLoading() {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (_) =>
          Center(
            child: PopScope(
              canPop: true,
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: appColors.colorPrimary,
                ),
              ),
            ),
          ),
    );
  }

  showNoticeBox({
    required String titleTxt,
    required String contentTxt,
  }) {
    showDialog(
        context: this,
        builder: (_) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(boxRadius_2)),
            ),
            title: Text(
              titleTxt,
              style: TextStyle(
                  fontSize: textRegular, fontWeight: FontWeight.bold),
            ),
            content: Text(contentTxt,
                style: TextStyle(fontSize: textRegular)),
            actions: [
              TextButton(
                child: Text(
                  'OK',
                  style: TextStyle(fontSize: textRegular),
                ),
                onPressed: () {
                  Navigator.of(_).pop();
                },
              ),
            ],
          );
        });
  }

  hideLoading() {
    // Navigator.of(this).pop();
    // Navigator.of(this, rootNavigator: true).pop();
    if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop();
    }
  }
}