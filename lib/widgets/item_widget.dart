import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemWiget extends StatelessWidget {
  Widget? image;
  Widget? title;
  Widget? subtitle;
  ItemWiget({
    Key? key,
    this.image,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _Image(
            child: Container(),
          ),
          Expanded(
            child: ListTile(
              title: const _Title(),
              subtitle: _Subtitle(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final Widget child;
  const _Image({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 60,
        width: 60,
        color: Colors.red,
        child: child,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

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

// ignore: must_be_immutable
class _Subtitle extends StatelessWidget {
  int? notification;
  _Subtitle({Key? key, this.notification}) : super(key: key);

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
                  height: 20,
                  color: const Color.fromRGBO(37, 211, 102, 1),
                  child: Center(
                    child: Text(
                      notification.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
