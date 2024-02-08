import "package:flutter/material.dart";
import "package:weedeyes/widgets/button_medium.dart";

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(221, 255, 224, 1),
                  Color.fromRGBO(255, 255, 255, 0.25)
                ])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 239,
                  ),
                  Image.asset("assets/images/closed_eye.png"),
                  const SizedBox(
                    height: 39,
                  ),
                  const Text(
                    "시각장애인입니까?",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Weedeyes 앱은 시각장애인 여부에 따라\n 지원하는 서비스가 다릅니다.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Column(children: [
                const Text(
                  "아니요",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 16,
                ),
                ButtonMedium(text: "예"),
                const SizedBox(
                  height: 48,
                ),
              ])
            ]),
      ),
    );
  }
}
