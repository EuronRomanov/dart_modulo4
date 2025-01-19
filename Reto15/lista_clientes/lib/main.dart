import 'package:calculadora/screens/clientList_page.dart';
import 'package:calculadora/screens/clientes_page.dart';
import 'package:calculadora/screens/home_page.dart';
import 'package:calculadora/screens/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        Routes.clientsList: (context) => ClientListPage(),
        Routes.clients: (context) => const ClientsPage(),
      },
    );
  }
}
