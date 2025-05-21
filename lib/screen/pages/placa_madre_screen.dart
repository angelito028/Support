import 'package:flutter/material.dart';

class PlacaMadreScreen extends StatelessWidget {
  const PlacaMadreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Placa Madre",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 20.0,
              ),
              child: SizedBox(
                width: double.maxFinite - 50.0,
                child: Image.asset("assets/placa_madre.png"),
              ),
            ),

            const SizedBox(height: 20.0),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fondo_login.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
