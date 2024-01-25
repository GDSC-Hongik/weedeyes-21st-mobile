import 'package:flutter/cupertino.dart';

class ButtonSmall extends StatelessWidget {
  final String? text;
  const ButtonSmall({Key? key, this.text});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(child: Text("$text"), onPressed: () {});
  }
}
