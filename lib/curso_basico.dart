import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({Key? key}) : super(key: key);

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Llama a la función fetchData() al iniciar el estado
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse("https://www.yanditv.com/api/curso_basico"));
      if (response.statusCode == 200) {
        setState(() {
          data = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
      // Manejo de errores, como mostrar un diálogo al usuario
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(data[index]);
        },
      ),
    );
  }

  Widget _buildItem(Map<String, dynamic> itemData) {
    final nombre = itemData['nombre'];
    final cedula = itemData['cedula'];
    final correo = itemData['correo'];
    final celular = itemData['celular'];
    final carrera = itemData['carrera'];
    final IDCarrera = carrera == "SOFTWARE";
    final initials = nombre.substring(0, 2).toUpperCase();

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: IDCarrera ? Colors.red : Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(child: Text(initials)),
              const SizedBox(width: 10),
            ],
          ),
          Text(
            ' $nombre',
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 5),
          Text('$cedula',  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
          const SizedBox(height: 5),
          Text('$correo',style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
          const SizedBox(height: 5),
          Text('$celular',style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(IDCarrera ? '$carrera' : "EXTERNO",style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
            ],
          )
        ],
      ),
    );
  }
}
