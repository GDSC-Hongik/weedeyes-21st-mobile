import 'package:flutter/cupertino.dart';

class ButtonMedium extends StatelessWidget {
  final String? text;
  const ButtonMedium({Key? key, this.text});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(child: Text("$text"), onPressed: () {});
  }
}
