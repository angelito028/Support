import 'package:flutter/material.dart';

class DiagnosticoScreen extends StatefulWidget {
  const DiagnosticoScreen({super.key});

  @override
  State<DiagnosticoScreen> createState() => _DiagnosticoScreenState();
}

class _DiagnosticoScreenState extends State<DiagnosticoScreen> {
  int _indicePregunta = -1;

  final List<Map<String, String>> _preguntas = [
    {
      "pregunta": "¿Qué es el hardware?",
      "respuesta":
          "El hardware, en informática, se refiere a los componentes físicos de un sistema informático. Son todas las partes que se pueden ver y tocar, desde el teclado y el ratón hasta los componentes internos como la placa base o el disco duro.\n"
          "El hardware es fundamental para el funcionamiento de una computadora, ya que proporciona la infraestructura física necesaria para ejecutar programas y almacenar datos. Sin hardware, el software no podría funcionar. ",
    },
    {
      "pregunta": "¿Cuál es la función del procesador?",
      "respuesta":
          "El procesador, también conocido como CPU (Unidad Central de Procesamiento), es el cerebro de la computadora. Su función principal es ejecutar instrucciones y procesar datos. Realiza cálculos, toma decisiones y controla el flujo de información entre los diferentes componentes del sistema.\n"
          "El procesador interpreta y ejecuta las instrucciones de los programas, lo que permite que la computadora realice tareas específicas. Cuanto más potente sea el procesador, más rápido podrá realizar estas tareas.",
    },
    {
      "pregunta": "¿Cuál es la diferencia entre memoria RAM y Almacenamiento?",
      "respuesta":
          "La memoria RAM (Memoria de Acceso Aleatorio) y el almacenamiento son dos componentes clave en una computadora, pero tienen funciones diferentes. "
          "La memoria RAM es un tipo de memoria volátil que se utiliza para almacenar datos temporales y programas en ejecución. Es rápida y permite un acceso rápido a los datos, pero su contenido se borra cuando la computadora se apaga. \n"
          "El almacenamiento, por otro lado, se refiere a dispositivos como discos duros o unidades de estado sólido (SSD) que almacenan datos de forma permanente. A diferencia de la RAM, el almacenamiento retiene la información incluso cuando la computadora está apagada.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            children: [
              Text(
                "Diagnóstico",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20.0),

              ...List.generate(_preguntas.length, (indice) {
                final estaExpandido = _indicePregunta == indice;
                return Column(
                  children: [
                    ListTile(
                      title: Text(_preguntas[indice]["pregunta"]!),

                      titleTextStyle: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(fontSize: 22.0),
                      trailing: Icon(
                        estaExpandido
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                      onTap: () {
                        setState(() {
                          _indicePregunta = estaExpandido ? -1 : indice;
                        });
                      },
                    ),
                    if (estaExpandido)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.0,
                          vertical: 8.0,
                        ),
                        color: Colors.grey[200],
                        width: double.infinity,
                        child: Text(
                          _preguntas[indice]['respuesta']!,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    Divider(),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
