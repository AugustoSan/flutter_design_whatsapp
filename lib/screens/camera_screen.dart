import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/providers/providers.dart';
import 'package:provider/provider.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatsProvider = Provider.of<ListChatsProvider>(context);
    return Scaffold(
      body: Center(
        child: chatsProvider.isLoading == true
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  chatsProvider.requestChats(context);
                },
                child: const Text('Cargar datos')),
      ),
    );
  }
}
