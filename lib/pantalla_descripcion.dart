import 'package:flutter/material.dart';

class PantallaDescripcion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estiliza el AppBar con un fondo degradado y estilo navideño.
      appBar: AppBar(
        title: Text(
          'Descripción del Proyecto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      // Fondo de pantalla con un degradado suave.
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icono navideño.
                Icon(
                  Icons.ac_unit,
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                // Texto principal estilizado.
                Text(
                  'Frigoservicios',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    letterSpacing: 2.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                // Descripción del proyecto con estilos mejorados.
                Text(
                  'Frigoservicios es una plataforma para la gestión técnica de aires acondicionados, '
                  'optimizando reportes y asignaciones técnicas.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                // Botón estilizado.
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/opciones');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 15.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Continuar',
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
      ),
    );
  }
}
