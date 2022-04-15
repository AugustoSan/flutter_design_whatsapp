import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/screens/screens.dart';
import 'package:permission_handler/permission_handler.dart';
// Import package
import 'package:contacts_service/contacts_service.dart';

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
            CallScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if (await Permission.contacts.request().isGranted) {
              // Either the permission was already granted before or the user just granted it.
              //await ContactsService.openContactForm();
              List<Contact> contacts = await ContactsService.getContacts();
              Navigator.pushNamed(context, '/list_contacts',
                  arguments: contacts);
            } else {
              // You can request multiple permissions at once.
              Map<Permission, PermissionStatus> statuses = await [
                Permission.location,
                Permission.storage,
              ].request();
              print(statuses[Permission.location]);
            }
          },
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
