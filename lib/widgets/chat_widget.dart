import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        style: ListTileStyle.list,
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey[200],
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 35,
              )),
        ),
        title: const Text('Javier Tapia'),
      ),
    );
  }
}
