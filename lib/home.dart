import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/curso_basico.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/lista_page.dart';
import 'package:curso_basico_flutter/tarjetas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> pages = const [
    BackgroundPage(),
    TarjetasPage(),
    CursoBasicoPage()
  ];

  void _onNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            _onNavigationItemTapped(2); 
          },
          child: Center(
            child: Text(
              "Curso de Flutter",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black38,
            size: 33.0,
          ),
        ],
        leading: const Icon(
          Icons.person,
          color: Colors.black38,
          size: 35.0,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavigationItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Tarjetas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}