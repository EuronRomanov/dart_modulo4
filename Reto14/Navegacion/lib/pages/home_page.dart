import 'package:calculadora/pages/customers_page.dart';
import 'package:calculadora/pages/products_page.dart';
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
              final route = MaterialPageRoute(
                builder: (context) {
                  return ProductsPage();
                },
              );
              Navigator.push(context, route);
            },
            color: Colors.blue,
            child: Text("IR A PRODUCTOS"),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (context) {
                  return CustomersPage();
                },
              );
              Navigator.push(context, route);
            },
            color: Colors.blue,
            child: Text("IR A CLIENTES"),
          ),
        ],
      ),
    );
  }
}
