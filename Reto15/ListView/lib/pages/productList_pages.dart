import 'package:calculadora/pages/PRproductos_pages.dart';
import 'package:flutter/material.dart';

class ProductsListPage extends StatelessWidget {
  final List<Product> productos = [
    Product(
        name: "Producto1",
        price: 10.0,
        description: "Descripcion del producto1"),
    Product(
        name: "Producto2",
        price: 20.0,
        description: "Descripcion del producto2"),
    Product(
        name: "Producto3",
        price: 30.0,
        description: "Descripcion del producto3"),
    Product(
        name: "Producto4",
        price: 40.0,
        description: "Descripcion del producto4"),
  ];

  ProductsListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(productos[index].name),
              subtitle: Text(productos[index].description),
              trailing: Text('\$${productos[index].price.toStringAsFixed(2)}'),
            );
          },
        ));
  }
}
