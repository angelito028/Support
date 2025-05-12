import 'package:flutter/material.dart';
import 'package:support/components/boton_componente.dart';
import 'package:support/screen/componentes_screen.dart';
import 'package:support/screen/diagnostico_screen.dart';
import 'package:support/screen/herramientas_screen.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Support',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: BotonComponente(
                        rutaBoton: DiagnosticoScreen(),
                        tituloBoton: "Diagnóstico",
                        imagenBoton: "diagnostico.png",
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: BotonComponente(
                        rutaBoton: HerramientasScreen(),
                        tituloBoton: "Herramientas",
                        imagenBoton: "herramientas.png",
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25.0),

                BotonComponente(
                  rutaBoton: ComponentesScreen(),
                  tituloBoton: "Componentes de la PC",
                  imagenBoton: "componentes.png",

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
