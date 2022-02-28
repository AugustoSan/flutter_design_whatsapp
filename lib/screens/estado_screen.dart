import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/widgets/item_widget.dart';

class EstadoScreen extends StatelessWidget {
  const EstadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ItemWiget(
          title: 'Mi estado',
          subtitle: 'Añade una actualización',
          onPress: () {},
        ),
        const ListTile(
          title: Text(
            'Recientes',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ItemWiget(
          title: 'Sin titulo',
          subtitle: DateTime.now().toString(),
          onPress: () => Navigator.pushNamed(context, 'chat_page'),
          notification: 1,
        ),
        ItemWiget(
          title: 'Sin titulo',
          subtitle: DateTime.now().toIso8601String(),
          onPress: () {},
        ),
        const ListTile(
          title: Text(
            'Vistos',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
