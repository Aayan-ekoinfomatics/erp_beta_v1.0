import 'package:erp_v1/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFive extends StatefulWidget {
  const PageFive({super.key});

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Center(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: [
              getCard('1'),
              getCard('2'),
              getCard('3'),
              getCard('4'),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCard(text) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const BlankPage()),
        // );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tertiary),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Content $text',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ]),
      ),
    );
  }
}
