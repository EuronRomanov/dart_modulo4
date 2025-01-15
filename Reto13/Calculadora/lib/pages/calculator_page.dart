import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});
  CalculatorPageState createState() => CalculatorPageState();
}

class CalculatorPageState extends State<CalculatorPage> {
  int valor1 = 0; // Primer número
  int valor2 = 0; // Segundo número
  int resultado = 0; // Resultado de la operación

  // Controladores para los campos de texto
  final TextEditingController number1Controller =
      TextEditingController(text: "0");
  final TextEditingController number2Controller =
      TextEditingController(text: "0");

  void _calculateSum() {
    setState(() {
      valor1 = int.parse(number1Controller.text); // Parsear entrada
      valor2 = int.parse(number2Controller.text); // Parsear entrada
      resultado = valor1 + valor2; // Calcular suma
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.right,
                controller: number1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Primer valor',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.right,
                controller: number2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Segundo valor',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateSum,
                child: Text('SUMAR'),
              ),
              SizedBox(height: 20),
              Text(
                'Resultado: $resultado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
