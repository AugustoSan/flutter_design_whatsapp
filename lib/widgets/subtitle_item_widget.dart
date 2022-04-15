import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubtitleItemWidget extends StatelessWidget {
  String subtitle;
  SubtitleItemWidget({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(fontSize: 14, color: Colors.black54),
      overflow: TextOverflow.ellipsis,
    );
  }
}
