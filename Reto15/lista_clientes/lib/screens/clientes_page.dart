import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});
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
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          child: Text("PAGINA DE CLIENTES"),
        ),
      ),
    );
  }
}
