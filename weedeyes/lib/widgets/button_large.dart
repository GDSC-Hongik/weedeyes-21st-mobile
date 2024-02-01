import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class button_large extends StatelessWidget {
  final String buttonText;
  const button_large ({Key? key, this.buttonText = '예'});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: CupertinoColors.activeGreen,
      borderRadius: BorderRadius.circular(20.0),
      onPressed: () {

      },
    );
  }
}