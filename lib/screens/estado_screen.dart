import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/widgets/item_widget.dart';

class EstadoScreen extends StatelessWidget {
  const EstadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ItemWiget()],
    );
  }
}
