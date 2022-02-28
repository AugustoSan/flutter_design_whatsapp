import 'package:flutter/material.dart';

import 'package:flutter_design_whatsapp/pages/pages.dart';

class RouteApp {
  static String initialRoute = 'home_page';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home_page': (_) => const HomePage(),
    'chat_page': (_) => const ChatPage(),
  };
}
