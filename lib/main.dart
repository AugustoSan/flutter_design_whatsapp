import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_design_whatsapp/providers/providers.dart';
import 'package:flutter_design_whatsapp/routes/routes.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ListChatsProvider()),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Design',
      initialRoute: RouteApp.initialRoute,
      routes: RouteApp.routes,
      theme: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: const Color.fromRGBO(18, 140, 126, 1),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(37, 211, 102, 1),
        ),
      ),
    );
  }
}
