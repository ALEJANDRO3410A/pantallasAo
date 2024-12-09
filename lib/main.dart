import 'package:flutter/material.dart';
import 'home.dart'; // Importa la nueva página HomePage
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
      debugShowCheckedModeBanner: false,
      title: 'Frigoservicios',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      initialRoute: '/', // Página de inicio es HomePage
      routes: {
        '/': (context) => HomePage(),  // Página de inicio ahora es HomePage
        '/bienvenida': (context) => PantallaBienvenida(),
        '/login': (context) => PantallaLogin(),
        '/registro': (context) => PantallaRegistro(),
        '/descripcion': (context) => PantallaDescripcion(),
        '/opciones': (context) => PantallaOpciones(),
      },
    );
  }
}
