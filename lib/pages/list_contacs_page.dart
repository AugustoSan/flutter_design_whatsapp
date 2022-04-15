import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ListContactsPage extends StatelessWidget {
  const ListContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contacts =
        ModalRoute.of(context)!.settings.arguments as List<Contact>;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                contacts[index].displayName == null
                    ? ''
                    : contacts[index].displayName!,
              ),
              subtitle: Text(contacts[index].identifier == null
                  ? ''
                  : contacts[index].identifier!),
            );
          }),
    );
  }
}
