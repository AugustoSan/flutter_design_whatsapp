import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ChatWidget(
          notification: 2,
        ),
        _ChatWidget(
          notification: 1,
        ),
        _ChatWidget(),
      ],
    );
  }
}

// ignore: must_be_immutable
class _ChatWidget extends StatelessWidget {
  int? notification;
  _ChatWidget({Key? key, this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () {},
        style: ListTileStyle.list,
        leading: const _ChatImage(),
        title: const _ChatTitle(),
        subtitle: notification != null
            ? _ChatBody(
                notification: notification,
              )
            : _ChatBody(),
      ),
    );
  }
}

class _ChatTitle extends StatelessWidget {
  const _ChatTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Text(
            'Javier Tapia',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '12:00 pm',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}

class _ChatImage extends StatelessWidget {
  const _ChatImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey[200],
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            size: 35,
          )),
    );
  }
}

// ignore: must_be_immutable
class _ChatBody extends StatelessWidget {
  int? notification;
  _ChatBody({
    Key? key,
    this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Este es un mensaje de prueba con mucho texto para saber como se muestra',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        notification != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 20,
                  color: const Color.fromRGBO(37, 211, 102, 1),
                  child: Center(
                    child: Text(
                      notification.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
