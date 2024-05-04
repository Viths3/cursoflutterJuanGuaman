import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<Map<String, dynamic>> items = [
    {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    },
    {
      'name': 'Jane Smith',
      'email': 'janesmith@example.com',
    },
    {
      'name': 'Robert Johnson',
      'email': 'robertjohnson@example.com',
    },
    {
      'name': 'Emily Davis',
      'email': 'emilydavis@example.com',
    },
    {
      'name': 'Michael Brown',
      'email': 'michaelbrown@example.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
        
          itemCount: items.length,
          itemBuilder: (BuildContext context, index) {
            final item = items[index];
            final name = item['name'];
            final email = item['email'];
            final initial = name.substring(0,1).toUpperCase();

            return ListTile(
              leading: CircleAvatar(child: Text(initial)),
              title: Text(name),
              subtitle: Text(email),
            );
          }),
    ));
  }
}
