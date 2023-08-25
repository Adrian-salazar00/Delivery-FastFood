import 'package:flutter/material.dart';
import 'package:flutter_aplicacion_1/pages/login_page.dart';

class Registro extends StatefulWidget {
  @override
  _Registro createState() => _Registro();
}

class _Registro extends State<Registro> {
  TextEditingController usuario = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  bool _isSecurePassword = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registo Usuario'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, top: 50, right: 10),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                    labelText: 'Nombre Usuario',
                    hintText: 'Escriba su nombre de usuario',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Celular',
                  hintText: 'Ingrese el número de celular',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextFormField(
                obscureText: _isSecurePassword,
                controller: pass,
                decoration: InputDecoration(
                  labelText: 'Contaseña',
                  hintText: 'Ingrese contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSecurePassword = !_isSecurePassword;
                      });
                    },
                    icon: _isSecurePassword
                        ? const Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  hintText: 'Ingrese su correo electronico',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  )
                },
                child: Text('Crear cuenta'),
              ),
            ),
          ],
        )));
  }
}
