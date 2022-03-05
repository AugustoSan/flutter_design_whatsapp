import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/models/models.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
    );
  }
}
