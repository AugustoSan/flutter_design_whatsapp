import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleItemWidget extends StatelessWidget {
  String title;
  TitleItemWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
