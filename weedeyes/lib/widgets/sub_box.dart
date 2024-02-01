import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sub_box extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const sub_box({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title
              ),
            ),
            Icon(
              CupertinoIcons.right_chevron,
              color: CupertinoColors.systemGrey,
            ),
          ],
        ),
      ),
    );
  }
}