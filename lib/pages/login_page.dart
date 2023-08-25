import 'package:flutter/material.dart';
import 'package:flutter_aplicacion_1/widgets/boton_page.dart';
import 'package:flutter_aplicacion_1/widgets/caja_text_page.dart';
import 'package:flutter_aplicacion_1/widgets/text_page.dart';
import 'package:flutter_aplicacion_1/pages/registro.dart';
import 'package:flutter_aplicacion_1/pages/recuperar_cuenta.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      //body: Container(
      child: Scaffold(
        //backgroundColor: const Color(0xFF8A2387),
        // backgroundColor: Color.fromARGB(0, 150, 180, 17),
        body: Container(
          //alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 50, right: 50),
            child: ListView(
              children: <Widget>[
                Image.asset('assets/FastFood.png'),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    //obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Usuario',
                      hintText: 'Ingrese nombre de usuario',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Contraseña',

                      //suffixIcon: togglePassword(),
                      hintText: 'Ingrese su contraseña',
                      //suffixIcon: togglePassword(),
                    ),
                  ),
                ),
                Botones(),

                ListTile(
                  title: Text('¿Olvidaste tu contraseña?'),
                  textColor: Colors.blue,
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecuperarCuenta()))
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),

                // SizedBox(
                //   height: 50,
                // ),

                ListTile(
                  leading: Icon(Icons.person_add_alt_1_outlined),
                  //selected: true,
                  title: Text('Crear cuenta nueva'),

                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Registro()))
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      //)
      //),
    );
  }
}
