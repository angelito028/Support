import 'package:flutter/material.dart';
import 'package:support/components/boton_componente.dart';
import 'package:support/screen/pages/placa_madre_screen.dart';
import 'package:support/screen/pages/procesador_screen.dart';

class ComponentesScreen extends StatelessWidget {
  const ComponentesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Support"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Componentes de la PC",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 25.0),

                BotonComponente(
                  rutaBoton: PlacaMadreScreen(),
                  imagenBoton: "placa_madre.png",
                  tituloBoton: "Placa Madre",
                  anchuraBoton: double.maxFinite,
                  alturaBoton: 380.0,
                ),

                const SizedBox(height: 25.0),

                BotonComponente(
                  rutaBoton: ProcesadorScreen(),
                  imagenBoton: "procesador.png",
                  tituloBoton: "Procesador",
                  anchuraBoton: double.maxFinite,
                  alturaBoton: 380.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
