import 'package:flutter/material.dart';
import 'package:support/screen/diagnostico_screen.dart';
import 'package:support/screen/inicio_screen.dart';
import 'package:support/screen/login_screen.dart';
import 'package:support/screen/principal_screen.dart';

void main() {
  runApp(const Support());
}

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/inicio": (c) => const InicioScreen(),
        "/login": (c) => const LoginScreen(),
        "/principal": (c) => const PrincipalScreen(),
        "/diagnostico": (c) => const DiagnosticoScreen(),

      },
      initialRoute: "/inicio",
      title: "Support",
      home: const InicioScreen(),
    );
  }
}
