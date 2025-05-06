import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_inicio.jpeg'),
            fit: BoxFit.fill,
          ),
        ),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(5, 29, 61, 0.60),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,
                  child: Column(
                    children: [
                      const Text(
                        'Bienvenidos ¡Tu guía en soporte y mantenimiento de computadoras!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Arial',
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF051D3D),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 30,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          textStyle: const TextStyle(fontSize: 18),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: const Text('Empezar'),
                      ),
                    ],
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
