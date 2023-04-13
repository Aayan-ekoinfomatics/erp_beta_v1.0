import 'package:erp_v1/screens/blank_page.dart';
import 'package:erp_v1/screens/page_five.dart';
import 'package:erp_v1/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 0,
      ),
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            getCard('1'),
            getCard('2'),
            getCard('3'),
            getCard('4'),
            getPageFive('5'),
            getCard('6'),
          ],
        ),
      ),
    );
  }

  Widget getCard(text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BlankPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tertiary),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Page $text',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ]),
      ),
    );
  }

  Widget getPageFive(text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PageFive()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tertiary),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Page $text',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ]),
      ),
    );
  }
}
