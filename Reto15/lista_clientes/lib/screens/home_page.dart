import 'package:calculadora/screens/routes.dart';
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
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.clientsList);
            },
            color: Colors.blue,
            child: Text("LISTAR CLIENTES"),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.clients);
            },
            color: Colors.blue,
            child: Text("IR A PAGINA DE CLIENTES"),
          ),
        ],
      ),
    );
  }
}
