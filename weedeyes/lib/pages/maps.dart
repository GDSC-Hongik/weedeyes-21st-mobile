import "package:flutter/material.dart";

import "package:weedeyes/widgets/search.dart";
import "package:weedeyes/widgets/button_medium.dart";

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Column(
                children: [
                  SizedBox(
                    height: 66,
                  ),
                  Search(),
                ],
              ),
              Column(
                children: [
                  ButtonMedium(text: "검색"),
                  SizedBox(
                    height: 48,
                  )
                ],
              )
            ])),
      ),
    );
  }
}
