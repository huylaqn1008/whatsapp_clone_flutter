import 'package:flutter/material.dart';
import 'package:flutter_social/common/extension/custom_theme_extension.dart';
import 'package:flutter_social/common/untils/colours.dart';

showLoadingDialog({
  required BuildContext context,
  required String message,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        content: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                color: Colours.greenDark,
              ),
              const SizedBox(height: 15),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: context.theme.grayColor,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
