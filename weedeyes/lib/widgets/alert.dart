import 'package:flutter/material.dart';
import 'package:weedeyes/widgets/button_small.dart';

class Alert extends StatelessWidget {
  Alert({super.key});

  final Map<String, String> PLACE = {
    "id": "1",
    "name": "Greanhead Cannabis",
    "location":
        "149 Thanon Tanao,Wat Bowon Niwet, Phra Nakhon, Bangkok10200 태국 ..",
    "danger": "2",
  };

  final List<String> Danger = [
    "대마와 직접적으로 연관이 없는 지점입니다. 대마가 없을 가능성이 높으나, 혹시 모를 경우를 대비해 주의해주세요",
    "주변에 대마가 들어간 음식을 판매하는 곳이 많습니다. 메뉴를 선택하실 때 주의해주세요.",
    "대마와 직접적으로 연관된 단어가 들어간 장소입니다. 메뉴를 선택하실 때 특히 주의해주세요."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 470,
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Container(decoration: BoxDecoration(color: Colors.grey)),
            ),
            SizedBox(
              width: 160,
              child: Column(
                children: [
                  Text(
                    PLACE["name"]!,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    PLACE["location"]!,
                    softWrap: true,
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          width: 328,
          height: 90,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(237, 93, 93, 1),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const Text(
            "대마 위험",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Text(Danger[int.parse(PLACE["danger"]!)]),
        const SizedBox(
          width: 328,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonSmall(
                text: "확인",
                size: 156,
              ),
              ButtonSmall(text: "취소", size: 156)
            ],
          ),
        ),
      ]),
    );
  }
}
