import 'package:flutter/material.dart';

class ProcesadorScreen extends StatelessWidget {
  const ProcesadorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Support"),
      ),

      body: Center(child: const Text("PROCESADOR SCREEN")),
    );
  }
}
