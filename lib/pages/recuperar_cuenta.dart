import 'package:flutter/material.dart';
import 'package:flutter_aplicacion_1/pages/login_page.dart';

class RecuperarCuenta extends StatefulWidget {
  const RecuperarCuenta({super.key});
//
  @override
  State<RecuperarCuenta> createState() => _seccionesState();
}

// class _seccionesState extends State<RecuperarCuenta> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           centerTitle: true,
//           title: Text(
//             'Delivery FastFood',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         body: ListView(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 'Introduce tu numero de celular',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: TextField(
//                 //obscureText: _isSecurePassword,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             //   ElevatedButton(
//             //       onPressed: () {
//             //         setState(() {});
//             //       },
//             //       //shape: RoundedRectangleBorder(
//             //       // borderRadius: BorderRadius.circular(30)),
//             //       child: Text(
//             //         'Cancelar',
//             //         style: TextStyle(fontSize: 20),
//             //       )),
//             //   SizedBox(
//             //     width: 10,
//             //   ),
//             //   ElevatedButton(
//             //       onPressed: () {
//             //         setState(() {});
//             //       },
//             //       child: Text(
//             //         'Buscar',
//             //         style: TextStyle(fontSize: 20),
//             //       ),
//             //     ),

//             Container(
//               width: 120, // Ancho del botón "Cancelar"
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Lógica del botón "Cancelar"
//                 },
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(10), // Bordes redondeados
//                   ),
//                 ),
//                 child: Text(
//                   'Cancelar',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//             SizedBox(width: 10), // Espacio entre los botones
//             Container(
//               width: 20, // Ancho del botón "Buscar"
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Lógica del botón "Buscar"
//                 },
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(10), // Bordes redondeados
//                   ),
//                 ),
//                 child: Text(
//                   'Buscar',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class _seccionesState extends State<RecuperarCuenta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Delivery FastFood',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Introduce tu numero de celular',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                //obscureText: _isSecurePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Center(
              // Envuelve los botones en un Center
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120, // Ancho del botón "Cancelar"
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120, //
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Buscar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
