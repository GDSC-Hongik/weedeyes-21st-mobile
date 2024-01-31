import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Search({super.key});
  final controll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      height: 56,
      child: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 16,
                    spreadRadius: 2)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.search),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(fontSize: 16),
                  controller: controll,
                  decoration: const InputDecoration(
                      hintText: "검색", border: InputBorder.none),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.mic)
            ],
          )),
    );
  }
}
