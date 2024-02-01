import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_box extends StatelessWidget {
  final VoidCallback onPressed;

  const main_box({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero, // 버튼의 기본 패딩 제거
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          Text(
            '카메라 인식',
            style: TextStyle(
              color: CupertinoColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
