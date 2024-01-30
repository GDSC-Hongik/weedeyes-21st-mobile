import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  final String? text;
  const ButtonSmall({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(144, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          backgroundColor: Color.fromRGBO(52, 220, 118, 1),
        ),
        child: Text(
          "$text",
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        ));
  }
}
