import 'package:flutter/material.dart';
import "package:weedeyes/app.dart";
import "package:weedeyes/initial.dart";
import "package:weedeyes/auth_camera.dart";
import "package:weedeyes/auth_location.dart";

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
        home: AuthLocation());
  }
}
