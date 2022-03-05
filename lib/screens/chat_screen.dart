import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/providers/providers.dart';

import 'package:flutter_design_whatsapp/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listChats = DataList.listContacts;
    return ListView.builder(
      itemCount: listChats.length,
      itemBuilder: (_, index) {
        return ChatWidget(contac: listChats[index].contact);
      },
    );
  }
}
