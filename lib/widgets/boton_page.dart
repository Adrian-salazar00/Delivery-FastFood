import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_aplicacion_1/pages/home_page.dart';
import 'package:flutter_aplicacion_1/pages/registro.dart';

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(37, 3, 60, 88),
            shape: StadiumBorder()),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()))
        },
        icon: Icon(Icons.login),
        label: Text('Iniciar sesion'),
      ),
    );
  }
}
