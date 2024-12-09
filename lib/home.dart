import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto de bienvenida
              Text(
                'Bienvenidos a mi página donde pondremos a prueba las rutas y pantallas de este proyecto.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Texto adicional
              Text(
                'Alejandro Ortiz',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 40),
              // Botón para comenzar
              ElevatedButton(
                onPressed: () {
                  // Navegar a la página de bienvenida
                  Navigator.pushNamed(context, '/bienvenida');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Comenzar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
