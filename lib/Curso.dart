// import 'package:flutter/material.dart';
// import 'package:curso_basico_flutter/background.dart';
// import 'package:curso_basico_flutter/pagina_con_estado.dart';
// import 'package:curso_basico_flutter/tarjetas.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   void _onPressedBackground(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) {
//         return const BackgroundPage();
//       },
//     ));
//   }

//   void _onPressedCards(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) {
//         return const TarjetasPage();
//       },
//     ));
//   }

//   void _onPressedEstados(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) {
//         return const PaginaConEstado();
//       },
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   _onPressedDashboard(context);
//                 },
//                 child: Container(
//                   width: 250.0,
//                   margin: const EdgeInsets.only(bottom: 50.0),
//                   child: const Center(
//                     child: Text(
//                       "Hola mundo",
//                       style: TextStyle(color: Colors.white, fontSize: 28.0),
//                     ),
//                   ),
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(bottom: 20.0),
//                 child: Text(
//                   "En este curso, estamos aprendiendo Flutter, con los estudiantes de la carrera de software," +
//                       "y estudiantes apasionados con la programación y el desarrollo de aplicaciones",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(color: Colors.black, fontSize: 18.0),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   MaterialButton(
//                     onPressed: () {
//                       _onPressedDashboard(context);
//                     },
//                     child: const Text("Dashboard"),
//                     color: Colors.amber,
//                   ),
//                   const SizedBox(width: 10.0),
//                   MaterialButton(
//                     onPressed: () {
//                       _onPressedEstados(context);
//                     },
//                     child: const Text("Estados"),
//                     color: Colors.amber,
//                   ),
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(bottom: 10.0),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   MaterialButton(
//                     onPressed: () {
//                       _onPressedBackground(context);
//                     },
//                     child: const Text("Background"),
//                     color: Colors.amber,
//                   ),
//                   const SizedBox(width: 10.0),
//                   MaterialButton(
//                     onPressed: () {
//                       _onPressedCards(context);
//                     },
//                     child: const Text("Tarjetas"),
//                     color: Colors.amber,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
