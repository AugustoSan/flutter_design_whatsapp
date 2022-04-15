import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/utils/utils.dart';

import 'package:flutter_design_whatsapp/widgets/widgets.dart';

class EstadoScreen extends StatelessWidget {
  const EstadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ItemWiget(
          image: Stack(
            children: [
              const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x300'),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: TitleItemWidget(title: 'Mi estado'),
          subtitle: SubtitleItemWidget(subtitle: 'Añade una actualización'),
          onPress: () {},
        ),
        const ListTile(
          title: Text(
            'Recientes',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ItemWiget(
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'Sin titulo'),
          subtitle: SubtitleItemWidget(
            subtitle: DateUtil.dateToString(
              DateUtil.returnToDate(
                DateTime.now(),
                const Duration(minutes: -1),
              ),
            ),
          ),
          onPress: () => Navigator.pushNamed(context, 'chat_page'),
        ),
        ItemWiget(
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'Sin titulo'),
          subtitle: SubtitleItemWidget(
            subtitle: DateUtil.dateToString(
              DateUtil.returnToDate(
                DateTime.now(),
                const Duration(hours: -1),
              ),
            ),
          ),
          onPress: () {},
        ),
        const ListTile(
          title: Text(
            'Vistos',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ItemWiget(
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'Sin titulo'),
          subtitle: SubtitleItemWidget(
            subtitle: DateUtil.dateToString(
              DateUtil.returnToDate(
                DateTime.now(),
                const Duration(hours: -1),
              ),
            ),
          ),
          onPress: () {},
        ),
      ],
    );
  }
}
