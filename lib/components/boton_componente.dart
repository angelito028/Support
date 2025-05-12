import 'package:flutter/material.dart';

class BotonComponente extends StatelessWidget {
  final Widget? rutaBoton;
  final String? tituloBoton;
  final String? imagenBoton;

  final double? anchuraBoton;
  final double? alturaBoton;

  const BotonComponente({
    super.key,
    this.rutaBoton,
    this.tituloBoton,
    this.imagenBoton,

    this.anchuraBoton,
    this.alturaBoton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: anchuraBoton == null ? double.infinity : anchuraBoton!,
      height: alturaBoton == null ? 140 : alturaBoton!,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => rutaBoton!),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Elimina el padding por defecto
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Stack(
          fit: StackFit.expand, // Asegura que todo el contenido llene el botón
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/${imagenBoton!}",
                fit: BoxFit.cover, // La imagen ocupa todo el espacio
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.4),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                tituloBoton!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
