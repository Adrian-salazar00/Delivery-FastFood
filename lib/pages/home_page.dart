// ignore_for_file: unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_aplicacion_1/pages/login_page.dart';
import 'package:flutter_aplicacion_1/pages/seccion_menus.dart';
import 'package:flutter_aplicacion_1/pages/secciones_page.dart';
import 'mi_cuenta.dart';
import 'mis_cupones.dart';
import 'mis_favoritos.dart';
import 'libro_reclamaciones.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //FloatingAcitionButton

      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            //aumente el const antes del Text
            'Delivery FastFood',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                //decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text('Adrian Salazar'),
                accountEmail: Text('salazar.@gamil.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 116, 223, 22),
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                //selected: true,
                title: Text('Inicio'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                },
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                //selected: true,
                title: Text('Mis pedidos'),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => manus()))
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                //selected: true,
                title: Text('Mis favoritos'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MisFavoritos()))
                },
              ),
              ListTile(
                leading: Icon(Icons.card_membership),
                //selected: true,
                title: Text('Mis cupones'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MisCupones()))
                },
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                //selected: true,
                title: Text('Mi cuenta'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MiCuenta()))
                },
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                //selected: true,
                title: Text('Libro de reclamaciones'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LibroReclamaciones()))
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Cerrar sesión'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()))
                },
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            //const TextField(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10), //aumente el const antes del EdgeInsets
              height: 200,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Card(
                  color: const Color.fromARGB(172, 106, 150, 207),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: Container(
                      width: 110,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Restaurantes',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Image.asset('assets/pollo.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(173, 225, 243, 95),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: Container(
                      width: 110,
                      child: Column(
                        children: [
                          Text(
                            'Supermercados',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Image.asset('assets/super.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(173, 81, 70, 230),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: Container(
                      width: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Envios',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Image.asset('assets/envio.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(173, 4, 223, 234),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: Container(
                      width: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Bebidas',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Image.asset('assets/bebida.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Restaurantes Populares',
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 3,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res1.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res2.jpeg'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res3.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res4.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
