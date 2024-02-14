import 'package:flutter/material.dart';

import 'package:weedeyes/cameras.dart';
import 'package:weedeyes/widgets/button_medium.dart';
import 'package:weedeyes/widgets/button_small.dart';
import 'package:weedeyes/widgets/option.dart';
import 'package:weedeyes/widgets/search.dart';
import "package:weedeyes/app.dart";
import "package:weedeyes/initial.dart";
import "package:weedeyes/auth_camera.dart";
import "package:weedeyes/auth_location.dart";
import "package:weedeyes/loading.dart";

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
        home: Loading1());
  }
}
