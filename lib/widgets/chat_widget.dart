import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/models/models.dart';
import 'package:flutter_design_whatsapp/utils/utils.dart';
import 'package:flutter_design_whatsapp/widgets/widgets.dart';

class ChatWidget extends StatelessWidget {
  final Contact contac;
  const ChatWidget({Key? key, required this.contac}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = contac.messages;
    return ItemWiget(
      title: contac.name,
      previewTitle: DateUtil.dateToString(messages[messages.length - 1].date),
      subtitle: messages.isNotEmpty ? messages[0].message : '',
      onPress: () =>
          Navigator.pushNamed(context, 'chat_page', arguments: contac),
    );
  }
}
