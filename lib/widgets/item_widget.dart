import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemWiget extends StatelessWidget {
  Widget? image;
  String title = 'Sin titulo';
  String subtitle = '';
  int? notification;
  DateTime? fecha = DateTime.now();
  Function onPress;

  ItemWiget({
    Key? key,
    this.image,
    required this.title,
    required this.subtitle,
    this.notification,
    this.fecha,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _Image(
            child: image == null
                ? const Image(
                    image: AssetImage('assets/no-image.jpg'),
                    fit: BoxFit.cover,
                  )
                : _Image(child: image!),
          ),
          Expanded(
            child: ListTile(
              title: fecha == null
                  ? _Title(
                      title: title,
                    )
                  : _Title(
                      title: title,
                      dateTitle: fecha,
                    ),
              subtitle: notification == null
                  ? _Subtitle(
                      subtitle: subtitle,
                    )
                  : _Subtitle(
                      subtitle: subtitle,
                      notification: notification,
                    ),
              onTap: () {
                onPress();
              },
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

// ignore: must_be_immutable
class _Title extends StatelessWidget {
  String? title = 'Sin titulo';
  DateTime? dateTitle;
  _Title({Key? key, this.title, this.dateTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title == null ? 'Sin titulo' : title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          dateTitle == null ? DateTime.now().toString() : dateTitle.toString(),
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class _Subtitle extends StatelessWidget {
  String subtitle;
  int? notification;
  _Subtitle({Key? key, required this.subtitle, this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            subtitle,
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
