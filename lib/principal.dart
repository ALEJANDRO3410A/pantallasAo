import 'package:flutter/material.dart';
import 'pantalla_bienvenida.dart';
import 'pantalla_login.dart';
import 'pantalla_registro.dart';
import 'pantalla_descripcion.dart';
import 'pantalla_opciones.dart';

void main() {
  runApp(FrigoserviciosApp());
}

class FrigoserviciosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frigoservicios',
      initialRoute: '/',
      routes: {
        '/': (context) => PantallaBienvenida(),
        '/login': (context) => PantallaLogin(),
        '/registro': (context) => PantallaRegistro(),
        '/descripcion': (context) => PantallaDescripcion(),
        '/opciones': (context) => PantallaOpciones(),
      },
    );
  }
}
