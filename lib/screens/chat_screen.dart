import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/models/models.dart';
import 'package:flutter_design_whatsapp/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactos = [
      ContactoModel(name: 'Javier Tapia', phone: '231-109-1234'),
      ContactoModel(name: 'Agus', phone: '222-773-9068'),
      ContactoModel(name: 'Maria Aure', phone: '231-129-1236'),
      ContactoModel(phone: '222-123-4567'),
    ];
    final messages = [
      MessageModel(
          envia: contactos[0],
          message: 'Que pedal',
          date: DateTime(2022, 2, 27, 7, 27, 52)),
      MessageModel(
          envia: contactos[1],
          message: 'Hi',
          date: DateTime(2022, 2, 25, 7, 28, 52)),
      MessageModel(
          envia: contactos[2],
          message: 'Trae las tortillas',
          date: DateTime(2022, 2, 22, 7, 26, 52)),
    ];
    return ListView(
      children: [
        ItemWiget(
          title: 'Javier Tapia',
          subtitle: '?',
          onPress: () {
            Navigator.pushNamed(context, 'chat_page');
          },
        ),
        ItemWiget(
          title: 'Mari',
          subtitle: 'quen onda?',
          notification: 2,
          onPress: () {
            Navigator.pushNamed(context, 'chat_page');
          },
        ),
      ],
    );
  }
}
