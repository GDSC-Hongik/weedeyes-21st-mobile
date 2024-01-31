import 'package:flutter/material.dart';
import 'package:weedeyes/widgets/button_medium.dart';
import 'package:weedeyes/widgets/button_small.dart';
import 'package:weedeyes/widgets/option.dart';
import 'package:weedeyes/widgets/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          ButtonSmall(
            text: "확인",
          ),
          ButtonMedium(
            text: "검색",
          ),
          Option(text: "대마 사진이 발견되었습니다.", option1: "확인", option2: "재촬영"),
          Search(),
        ]),
      ),
    );
  }
}
