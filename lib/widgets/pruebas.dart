import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemWigetPruebas extends StatelessWidget {
  Widget image;
  Widget title;
  Widget subtitle;
  Widget? leading;
  Function onPress;

  ItemWigetPruebas({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.leading,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _Image(
            child: _Image(child: image),
          ),
          Expanded(
            child: Column(
              children: [
                _RowItem(
                  child: title,
                ),
                _RowItem(
                  child: subtitle,
                ),
              ],
            ),
          ),
          leading == null ? Container() : leading!
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
      child: SizedBox(
        height: 60,
        width: 60,
        child: child,
      ),
    );
  }
}

// ignore: must_be_immutable
class _RowItem extends StatelessWidget {
  Widget child;
  _RowItem({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          child,
        ],
      ),
    );
  }
}
