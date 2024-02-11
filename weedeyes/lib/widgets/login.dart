import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  final String buttonText;

  const login({
    Key? key,
    this.buttonText = '아이디',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(child: Text(buttonText), onPressed: () {});
  }
}