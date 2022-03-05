import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/screens/camera_screen.dart';
import 'package:flutter_design_whatsapp/screens/estado_screen.dart';
import 'package:flutter_design_whatsapp/screens/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                ),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'ESTADOS',
              ),
              Tab(
                text: 'LLAMADAS',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            EstadoScreen(),
            Icon(Icons.call),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
