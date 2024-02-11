import 'package:flutter/cupertino.dart';

class customSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
