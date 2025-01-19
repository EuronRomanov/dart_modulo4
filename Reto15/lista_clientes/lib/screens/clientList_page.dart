import 'package:calculadora/screens/PRclientes_pages.dart';
import 'package:flutter/material.dart';

class ClientListPage extends StatelessWidget {
  final List<Client> clientes = [
    Client(name: "nombre1", surname: "apellido1", age: 12),
    Client(name: "nombre2", surname: "apellido2", age: 2),
    Client(name: "nombre3", surname: "apellido3", age: 30),
    Client(name: "nombre4", surname: "apellido4", age: 14),
    Client(name: "nombre5", surname: "apellido5", age: 18),
    Client(name: "nombre6", surname: "apellido6", age: 17),
    Client(name: "nombre7", surname: "apellido7", age: 56),
    Client(name: "nombre8", surname: "apellido8", age: 60),
    Client(name: "nombre9", surname: "apellido9", age: 13),
    Client(name: "nombre10", surname: "apellido10", age: 57),
  ];

  ClientListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Lista Clientes"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: ListView.builder(
          itemCount: clientes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(clientes[index].name),
              subtitle: Text(clientes[index].surname),
              trailing: Text('${clientes[index].age} años'),
            );
          },
        ));
  }
}
