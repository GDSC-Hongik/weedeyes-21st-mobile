import 'package:flutter/material.dart';

import 'package:weedeyes/widgets/button_small.dart';

class Option extends StatelessWidget {
  final String? option1;
  final String? option2;
  final String? text;

  const Option(
      {super.key,
      required this.text,
      required this.option1,
      required this.option2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 160,
      child: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(color: Color.fromRGBO(95, 95, 95, 0.25), blurRadius: 16)
            ]),
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 84,
                child: Container(
                  alignment: Alignment.center,
                  child: Text("$text",
                      style:
                          const TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonSmall(text: "$option1"),
                  ButtonSmall(text: "$option2"),
                ],
              )
            ]),
      ),
    );
  }
}
