import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class header extends StatelessWidget {
  final String title;

  const header({
    Key? key,
    this.title = '프로필',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title),
      leading: CupertinoNavigationBarBackButton(
        onPressed: () {
          Navigator.maybePop(context);
        },
      ),
      trailing: Icon(CupertinoIcons.ellipsis),
    );
  }
}