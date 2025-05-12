import 'package:flutter/material.dart';

class PlacaMadreScreen extends StatelessWidget {
  const PlacaMadreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Support"),
      ),

      body: Center(child: const Text("PLACA MADRE SCREEN")),
    );
  }
}
