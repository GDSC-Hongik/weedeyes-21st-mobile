import "package:flutter/material.dart";
import "package:weedeyes/widgets/button_medium.dart";

class AuthLocation extends StatelessWidget {
  const AuthLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 95,
              ),
              const SizedBox(
                width: 327,
                child: Text(
                  "위드아이즈는\n위치 인식을 통해\n대마 위험 정도를 알려줍니다.",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              Image.asset("assets/images/location.png"),
              const SizedBox(
                height: 32,
              ),
              Image.asset("assets/images/nav_left.png"),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "건너뛰기",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(95, 95, 95, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonMedium(text: "시작하기")
            ],
          )),
    );
  }
}
