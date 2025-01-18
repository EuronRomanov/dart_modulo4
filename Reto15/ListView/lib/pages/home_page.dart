import 'package:calculadora/pages/customers_page.dart';
import 'package:calculadora/pages/products_page.dart';
import 'package:calculadora/pages/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.products);
            },
            color: Colors.blue,
            child: Text("IR A PRODUCTOS"),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.customers);
            },
            color: Colors.blue,
            child: Text("IR A CLIENTES"),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
            },
            color: Colors.blue,
            child: Text("IR A LISTVIEW BASICO"),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productsList);
            },
            color: Colors.blue,
            child: Text("IR A LISTA PRODUCTO"),
          ),
        ],
      ),
    );
  }
}
