import 'package:calculadora/pages/customers_page.dart';
import 'package:calculadora/pages/home_page.dart';
import 'package:calculadora/pages/listview_page.dart';
import 'package:calculadora/pages/productList_pages.dart';
import 'package:calculadora/pages/products_page.dart';
import 'package:calculadora/pages/routes.dart';
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
        Routes.products: (context) => const ProductsPage(),
        Routes.customers: (context) => const CustomersPage(),
        Routes.listview: (context) => const ListViewPage(),
        Routes.productsList: (context) => ProductsListPage(),
      },
    );
  }
}
