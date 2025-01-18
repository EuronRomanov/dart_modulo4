import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Texto1"),
              subtitle: Text("Subtite"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue,
              ),
            )
          ],
        ));
  }
}
