import "package:flutter/material.dart";

import "package:weedeyes/loading.dart";
import "package:weedeyes/pages/maps.dart";

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Weedeyes',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: "Pretendard"),
        home: Maps());
  }
}
