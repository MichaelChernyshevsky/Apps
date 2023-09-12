import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen(
      {super.key,
      required this.title,
      required this.description,
      required this.id});

  final String title;
  final String description;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(title),
          Text(description),
        ],
      ),
    );
  }
}
