import 'package:app_with_apps/constants/localization/text.dart';
import 'package:flutter/material.dart';

class ThurdScreen extends StatefulWidget {
  const ThurdScreen({super.key});

  @override
  State<ThurdScreen> createState() => _ThurdScreenState();
}

class _ThurdScreenState extends State<ThurdScreen> {
  @override
  Widget build(BuildContext context) {
    String whether = '90ch';
    int timer = 10;

    return Scaffold(
      appBar: AppBar(title: Text(ConstantText.thurdScreen)),
      body: Center(
          child: Column(
        children: [
          Text(whether),
          Text(timer.toString()),
        ],
      )),
    );
  }
}
