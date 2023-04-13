import 'package:erp_v1/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlankPage extends StatefulWidget {
  const BlankPage({super.key});

  @override
  State<BlankPage> createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: const Center(
        child: Text('Blank Page'),
      ),
    );
  }
}
