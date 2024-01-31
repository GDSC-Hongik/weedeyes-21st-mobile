import 'package:flutter/material.dart';

class ButtonMedium extends StatelessWidget {
  final String? text;
  const ButtonMedium({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(300, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          backgroundColor: const Color.fromRGBO(52, 220, 118, 1),
        ),
        child: Text(
          "$text",
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        ));
  }
}
