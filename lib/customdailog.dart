import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  const CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        CupertinoDialogAction(
            onPressed: callback,
            isDefaultAction: true,
            child: Text(actionText))

      ],
    );
  }
}