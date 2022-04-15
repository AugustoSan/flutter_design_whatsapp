import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/widgets/widgets.dart';
import 'package:flutter_design_whatsapp/utils/utils.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: SubtitleItemWidget(
            subtitle: DateUtil.dateToString(
              DateUtil.returnToDate(
                DateTime.now(),
                const Duration(seconds: -2),
              ),
            ),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: SubtitleItemWidget(
            subtitle: DateUtil.dateToString(
              DateUtil.returnToDate(
                DateTime.now(),
                const Duration(minutes: -2),
              ),
            ),
          ),
          leading: const Icon(
            Icons.call,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: Row(
            children: [
              const Icon(
                Icons.call_made,
                size: 16,
                color: Color.fromRGBO(18, 140, 126, 1),
              ),
              SubtitleItemWidget(
                subtitle: DateUtil.dateToString(
                  DateUtil.returnToDate(
                    DateTime.now(),
                    const Duration(hours: -1),
                  ),
                ),
              ),
            ],
          ),
          leading: const Icon(
            Icons.videocam_rounded,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: Row(
            children: [
              const Icon(
                Icons.call_received,
                size: 16,
                color: Colors.red,
              ),
              SubtitleItemWidget(
                subtitle: DateUtil.dateToString(
                  DateUtil.returnToDate(
                    DateTime.now(),
                    const Duration(hours: -5),
                  ),
                ),
              ),
            ],
          ),
          leading: const Icon(
            Icons.videocam_rounded,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: Row(
            children: [
              const Icon(
                Icons.call_missed,
                size: 16,
                color: Colors.red,
              ),
              SubtitleItemWidget(
                subtitle: DateUtil.dateToString(
                  DateUtil.returnToDate(
                    DateTime.now(),
                    const Duration(days: -1),
                  ),
                ),
              ),
            ],
          ),
          leading: const Icon(
            Icons.videocam_rounded,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: Row(
            children: [
              const Icon(
                Icons.call_made,
                size: 16,
                color: Color.fromRGBO(18, 140, 126, 1),
              ),
              SubtitleItemWidget(
                subtitle: DateUtil.dateToString(
                  DateUtil.returnToDate(
                    DateTime.now(),
                    const Duration(days: -2),
                  ),
                ),
              ),
            ],
          ),
          leading: const Icon(
            Icons.call,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
        ItemWiget(
          onPress: () {},
          image: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/300x300'),
            fit: BoxFit.cover,
          ),
          title: TitleItemWidget(title: 'titulo'),
          subtitle: Row(
            children: [
              const Icon(
                Icons.call_received,
                size: 16,
                color: Colors.red,
              ),
              SubtitleItemWidget(
                subtitle: DateUtil.dateToString(
                  DateUtil.returnToDate(
                    DateTime.now(),
                    const Duration(days: -5),
                  ),
                ),
              ),
            ],
          ),
          leading: const Icon(
            Icons.call,
            color: Color.fromRGBO(18, 140, 126, 1),
          ),
        ),
      ],
    );
  }
}
